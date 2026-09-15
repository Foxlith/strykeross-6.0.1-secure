.class public Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
.super Linet/ipaddr/format/util/AddressTrie$TrieNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4TrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressTrie;->INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;-><init>(Linet/ipaddr/Address;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4Address;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;-><init>(Linet/ipaddr/Address;)V

    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->allNodeIterator(Z)Ljava/util/Iterator;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->allNodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asNewTrie()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->asNewTrie()Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public asNewTrie()Linet/ipaddr/ipv4/IPv4AddressTrie;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->asNewTrie()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie;

    return-object v0
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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeAllNodeIterator(Z)Ljava/util/Iterator;

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

    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->clone()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->clone()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->clone()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->cloneTree()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->cloneTree()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneTree()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containedFirstIterator(Z)Ljava/util/Iterator;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNewImpl(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->createNewImpl(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public createNewImpl(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;-><init>(Linet/ipaddr/ipv4/IPv4Address;)V

    return-object v0
.end method

.method public bridge synthetic createNewTree()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->createNewTree()Linet/ipaddr/ipv4/IPv4AddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public createNewTree()Linet/ipaddr/ipv4/IPv4AddressTrie;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressTrie;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressTrie;-><init>()V

    return-object v0
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->firstNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->firstNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

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

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getLowerSubNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getLowerSubNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getLowerSubNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getParent()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getParent()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getUpperSubNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->getUpperSubNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getUpperSubNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->lastNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->lastNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerAddedNode(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->nextAddedNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->nextAddedNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextAddedNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->nextNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->nextNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeIterator(Z)Ljava/util/Iterator;

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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->previousAddedNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->previousAddedNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousAddedNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->previousNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->previousNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousNode()Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object v0
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;->removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressTrie$IPv4TrieNode;

    return-object p1
.end method

.method public replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V

    sget-boolean v0, Linet/ipaddr/format/util/BinaryTreeNode;->FREEZE_ROOT:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Linet/ipaddr/ipv4/IPv4AddressTrie;->INIT_ROOT:Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setKey(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
