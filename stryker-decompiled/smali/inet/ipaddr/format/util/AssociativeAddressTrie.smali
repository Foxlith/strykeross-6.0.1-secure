.class public abstract Linet/ipaddr/format/util/AssociativeAddressTrie;
.super Linet/ipaddr/format/util/AddressTrie;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTriePutOps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;,
        Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Linet/ipaddr/Address;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/AddressTrie<",
        "TK;>;",
        "Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTriePutOps<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field map:Linet/ipaddr/format/util/AddressTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie;-><init>(Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Supplier;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lambda$remapIfAbsent$1(Ljava/util/function/Supplier;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lambda$remap$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$remap$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->REMOVE_NODE:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$remapIfAbsent$1(Ljava/util/function/Supplier;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_1

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->DO_NOTHING:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    return-object p0
.end method

.method private remapImpl(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TV;+",
            "Ljava/lang/Object;",
            ">;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->throwOutOfBounds()V

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    :cond_2
    new-instance v1, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v2, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v1, p1, v2}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    iput-object p2, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->remapper:Ljava/util/function/Function;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-nez p1, :cond_3

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    :cond_3
    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addNode(Linet/ipaddr/format/util/AddressTrie$OpResult;Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TK;>;",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TK;>;",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TK;>;Z)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TK;>;"
        }
    .end annotation

    .line 2
    if-eqz p4, :cond_0

    instance-of v0, p3, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrie;->addNode(Linet/ipaddr/format/util/AddressTrie$OpResult;Linet/ipaddr/format/util/AddressTrie$TrieNode;Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->allNodeIterator(Z)Ljava/util/Iterator;

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

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public asMap()Linet/ipaddr/format/util/AddressTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/AddressTrieMap;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;)V

    :cond_0
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;TK;TC;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AbstractTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/AddressTrie;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie;

    const/4 v1, 0x0

    iput-object v1, v0, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie;

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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;TK;TC;>;"
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
            "+",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;TK;TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public abstract createNew(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TK;>;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public abstract createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TK;>;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie;

    return-object p1
.end method

.method public bridge synthetic elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    return-object p1
.end method

.method public elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;

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
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

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
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->get(Linet/ipaddr/Address;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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

.method public bridge synthetic getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->getRoot()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic getRoot()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0}, Linet/ipaddr/format/util/AddressTrie;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object v0
.end method

.method public bridge synthetic longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
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

    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

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

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

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
    invoke-super {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public put(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

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

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    new-instance v1, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v2, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v1, p1, v2}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    iput-object p2, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingValue:Ljava/lang/Object;

    return-object p1
.end method

.method public putNew(Linet/ipaddr/Address;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
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

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v1

    new-instance v2, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v3, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v2, p1, v3}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    iput-object p2, v2, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-boolean p1, v2, Linet/ipaddr/format/util/AddressTrie$OpResult;->exists:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public putNode(Linet/ipaddr/Address;Ljava/lang/Object;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

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

    invoke-virtual {p0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->absoluteRoot()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    new-instance v1, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v2, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v1, p1, v2}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    iput-object p2, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->newValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-nez p1, :cond_1

    iget-object p1, v1, Linet/ipaddr/format/util/AddressTrie$OpResult;->inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    :cond_1
    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public putTrie(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;Z)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public remap(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TV;+TV;>;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/f;

    invoke-direct {v0, p2}, Linet/ipaddr/format/util/f;-><init>(Ljava/util/function/Function;)V

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remapImpl(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public remapIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Supplier<",
            "+TV;>;Z)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/e;

    invoke-direct {v0, p2, p3}, Linet/ipaddr/format/util/e;-><init>(Ljava/util/function/Supplier;Z)V

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remapImpl(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

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
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method

.method public bridge synthetic smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/AddressTrie;->smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-object p1
.end method
