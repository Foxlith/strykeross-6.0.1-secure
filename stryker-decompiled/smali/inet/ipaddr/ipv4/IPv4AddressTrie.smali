.class public Linet/ipaddr/ipv4/IPv4AddressTrie;
.super Linet/ipaddr/format/util/AddressTrie;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/AddressTrie<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        ">;"
    }
.end annotation


# static fields
.field static final INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/IPAddressString;

    const-string v1, "0.0.0.0/0"

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressString;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toIPv4()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressTrie;->INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;-><init>()V

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;-><init>()V

    invoke-direct {p0, v0, p1}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->addNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)",
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
            "Linet/ipaddr/ipv4/IPv4Address;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AbstractTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/ipv4/IPv4AddressTrie;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public constructAddedNodesTree()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Ljava/util/List<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "*>;>;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;-><init>()V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie;->contructAddedTree(Linet/ipaddr/format/util/AssociativeAddressTrie;)V

    return-object v0
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
            "Linet/ipaddr/ipv4/IPv4Address;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
            "Linet/ipaddr/ipv4/IPv4Address;",
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
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)",
            "Linet/ipaddr/ipv4/IPv4AddressTrie;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressTrie;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-object v0
.end method

.method public bridge synthetic createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressTrie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)",
            "Linet/ipaddr/ipv4/IPv4AddressTrie;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressTrie;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;-><init>(Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-object v0
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressTrie;

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

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->firstNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->getAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrieOps;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->getRoot()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->getRoot()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie;->lastNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
            "Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;",
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
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie;->removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method
