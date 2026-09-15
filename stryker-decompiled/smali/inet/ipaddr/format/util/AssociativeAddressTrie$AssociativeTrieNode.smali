.class public abstract Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
.super Linet/ipaddr/format/util/AddressTrie$TrieNode;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTrieOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AssociativeAddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AssociativeTrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Linet/ipaddr/Address;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
        "TK;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTrieOps<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;-><init>(Linet/ipaddr/Address;)V

    return-void
.end method


# virtual methods
.method public added(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TK;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->added(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->allNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public allNodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asNewTrie()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->asNewTrie()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public asNewTrie()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->asNewTrie()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie;

    return-object v0
.end method

.method public blockSizeAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;TK;TC;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public clearValue()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->value:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->cloneTree()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneTree()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->cloneTree()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;TK;TC;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;TK;TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public get(Linet/ipaddr/Address;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->LOOKUP:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v0, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrieOps;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getLowerSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public getNodeIdentifier()Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getNodeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x32

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getParent()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getParent()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getUpperSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->hashCode()I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public matchedInserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TK;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchedInserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingValue:Ljava/lang/Object;

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nextAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nextAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nextNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nextNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSpliterator(Z)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSpliterator(ZZ)Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->previousAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->previousAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->previousNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->previousNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TK;>;Z)Z"
        }
    .end annotation

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->remapper:Ljava/util/function/Function;

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->getCurrent()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingValue:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->DO_NOTHING:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    return v4

    :cond_1
    sget-object v3, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->REMOVE_NODE:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    if-ne v0, v3, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {p2, v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->clearValue()V

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remove(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    :cond_2
    return v4

    :cond_3
    const/4 v3, 0x1

    if-eqz p2, :cond_5

    if-eq v0, v2, :cond_4

    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {p2, v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V

    iput-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    return v3

    :cond_4
    return v4

    :cond_5
    iput-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    return v3
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public removed()V
    .locals 0

    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->removed()V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->clearValue()V

    return-void
.end method

.method public replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TK;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object p1, p0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->value:Ljava/lang/Object;

    return-object v0
.end method
