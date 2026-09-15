.class public Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;
.super Linet/ipaddr/format/util/AssociativeAddressTrie;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/AssociativeAddressTrie<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressTrie;->INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;-><init>()V

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)V

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
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;-><init>()V

    invoke-direct {p0, v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-void
.end method

.method public static synthetic access$000()Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->addNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->addNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public allNodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->allNodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public blockSizeAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->blockSizeAllNodeIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v0

    return-object v0
.end method

.method public blockSizeNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AbstractTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->clone()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

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
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public containedFirstIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containedFirstIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

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
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object p1

    return-object p1
.end method

.method public createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie<",
            "TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-object v0
.end method

.method public bridge synthetic createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    move-result-object p1

    return-object p1
.end method

.method public createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie<",
            "TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->absoluteRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;-><init>(Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-object v0
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->firstAddedNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->firstAddedNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstAddedNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->firstNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->firstNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->getRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->lastAddedNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->lastAddedNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastAddedNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->lastNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->lastNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putNode(Linet/ipaddr/Address;Ljava/lang/Object;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->putNode(Linet/ipaddr/ipv4/IPv4Address;Ljava/lang/Object;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public putNode(Linet/ipaddr/ipv4/IPv4Address;Ljava/lang/Object;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "TV;)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->putNode(Linet/ipaddr/Address;Ljava/lang/Object;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic putTrie(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->putTrie(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public putTrie(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "TV;>;)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->putTrie(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic remap(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->remap(Linet/ipaddr/ipv4/IPv4Address;Ljava/util/function/Function;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public remap(Linet/ipaddr/ipv4/IPv4Address;Ljava/util/function/Function;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Ljava/util/function/Function<",
            "-TV;+TV;>;)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remap(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic remapIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->remapIfAbsent(Linet/ipaddr/ipv4/IPv4Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public remapIfAbsent(Linet/ipaddr/ipv4/IPv4Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Ljava/util/function/Supplier<",
            "+TV;>;Z)",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remapIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie;->removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ")",
            "Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressAssociativeTrie$IPv4AssociativeTrieNode;

    return-object p1
.end method
