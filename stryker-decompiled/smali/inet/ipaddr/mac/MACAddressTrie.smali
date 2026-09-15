.class public Linet/ipaddr/mac/MACAddressTrie;
.super Linet/ipaddr/format/util/AddressTrie;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/AddressTrie<",
        "Linet/ipaddr/mac/MACAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final INIT_ROOT:Linet/ipaddr/mac/MACAddress;

.field static final INIT_ROOT_EXTENDED:Linet/ipaddr/mac/MACAddress;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/MACAddressString;

    const-string v1, "*:*:*:*:*:*"

    invoke-direct {v0, v1}, Linet/ipaddr/MACAddressString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressTrie;->INIT_ROOT:Linet/ipaddr/mac/MACAddress;

    new-instance v0, Linet/ipaddr/MACAddressString;

    const-string v1, "*:*:*:*:*:*:*:*"

    invoke-direct {v0, v1}, Linet/ipaddr/MACAddressString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linet/ipaddr/MACAddressString;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressTrie;->INIT_ROOT_EXTENDED:Linet/ipaddr/mac/MACAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;-><init>()V

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;-><init>()V

    invoke-direct {p0, v0, p1}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->absoluteRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public absoluteRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object v0
.end method

.method public bridge synthetic addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->addNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;)",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic adjustRoot(Linet/ipaddr/Address;)V
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->adjustRoot(Linet/ipaddr/mac/MACAddress;)V

    return-void
.end method

.method public adjustRoot(Linet/ipaddr/mac/MACAddress;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/Address;->getSegmentCount()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->absoluteRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;->setExtendedRootKey()V

    :cond_0
    return-void
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public allNodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->allNodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public blockSizeAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->blockSizeAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

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
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            "Linet/ipaddr/mac/MACAddress;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v0

    return-object v0
.end method

.method public blockSizeNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->ceilingAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AbstractTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->clone()Linet/ipaddr/mac/MACAddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->clone()Linet/ipaddr/mac/MACAddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/mac/MACAddressTrie;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->clone()Linet/ipaddr/mac/MACAddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public constructAddedNodesTree()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "Linet/ipaddr/mac/MACAddress;",
            "Ljava/util/List<",
            "Linet/ipaddr/mac/MACAddressAssociativeTrie$MACAssociativeTrieNode<",
            "*>;>;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/mac/MACAddressAssociativeTrie;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressAssociativeTrie;-><init>()V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->contructAddedTree(Linet/ipaddr/format/util/AssociativeAddressTrie;)V

    return-object v0
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public containedFirstIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->containedFirstIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            "Linet/ipaddr/mac/MACAddress;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            "Linet/ipaddr/mac/MACAddress;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/mac/MACAddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/mac/MACAddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;)",
            "Linet/ipaddr/mac/MACAddressTrie;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/mac/MACAddressTrie;

    invoke-direct {v0, p1}, Linet/ipaddr/mac/MACAddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-object v0
.end method

.method public bridge synthetic createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/mac/MACAddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/mac/MACAddressTrie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;)",
            "Linet/ipaddr/mac/MACAddressTrie;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/mac/MACAddressTrie;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->absoluteRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Linet/ipaddr/mac/MACAddressTrie;-><init>(Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-object v0
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->elementsContainedBy(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedBy(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->elementsContaining(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/mac/MACAddressTrie;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->firstAddedNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstAddedNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->firstNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->floorAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->getAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrieOps;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->getNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->getRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->getRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->higherAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->lastAddedNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastAddedNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressTrie;->lastNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->longestPrefixMatchNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->lowerAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerAddedNode(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->nodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressTrie;->removeElementsContainedBy(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressTrie$MACTrieNode;

    return-object p1
.end method
