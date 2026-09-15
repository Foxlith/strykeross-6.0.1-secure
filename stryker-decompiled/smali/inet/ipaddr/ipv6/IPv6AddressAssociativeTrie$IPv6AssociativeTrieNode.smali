.class public Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
.super Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6AssociativeTrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
        "Linet/ipaddr/ipv6/IPv6Address;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;->access$000()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;-><init>(Linet/ipaddr/Address;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6Address;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;-><init>(Linet/ipaddr/Address;)V

    return-void
.end method


# virtual methods
.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public allNodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->allNodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asNewTrie()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->asNewTrie()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNewTrie()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->asNewTrie()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;

    move-result-object v0

    return-object v0
.end method

.method public asNewTrie()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->asNewTrie()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;

    return-object v0
.end method

.method public blockSizeAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->blockSizeAllNodeIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v0

    return-object v0
.end method

.method public blockSizeNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->ceilingAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->ceilingAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->clone()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->clone()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->clone()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->clone()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->cloneTree()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->cloneTree()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->cloneTree()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneTree()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->cloneTree()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public containedFirstIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->containedFirstIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

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
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNewImpl(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->createNewImpl(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public createNewImpl(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;-><init>(Linet/ipaddr/ipv6/IPv6Address;)V

    return-object v0
.end method

.method public bridge synthetic createNewTree()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->createNewTree()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;

    move-result-object v0

    return-object v0
.end method

.method public createNewTree()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;-><init>()V

    return-object v0
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->elementsContainedBy(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->elementsContainedBy(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedBy(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->elementsContaining(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->elementsContaining(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->firstAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->firstAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->firstAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->firstNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->firstNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->firstNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->floorAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->floorAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getLowerSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getLowerSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getLowerSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getLowerSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getParent()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getParent()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getParent()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getParent()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getUpperSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getUpperSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->getUpperSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getUpperSubNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->higherAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->higherAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lastAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lastAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lastAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lastNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lastNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lastNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->longestPrefixMatchNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->longestPrefixMatchNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lowerAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->lowerAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerAddedNode(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->nextAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->nextAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->nextAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nextAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->nextNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->nextNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->nextNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nextNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->previousAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->previousAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->previousAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousAddedNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->previousAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->previousNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->previousNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->previousNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousNode()Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->previousNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->removeElementsContainedBy(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;->removeElementsContainedBy(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie$IPv6AssociativeTrieNode;

    return-object p1
.end method

.method public replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V

    sget-boolean v0, Linet/ipaddr/format/util/BinaryTreeNode;->FREEZE_ROOT:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressAssociativeTrie;->access$000()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setKey(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
