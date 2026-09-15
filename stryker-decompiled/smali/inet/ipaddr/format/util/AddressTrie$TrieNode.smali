.class public abstract Linet/ipaddr/format/util/AddressTrie$TrieNode;
.super Linet/ipaddr/format/util/BinaryTreeNode;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressTrieOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Linet/ipaddr/format/util/BinaryTreeNode<",
        "TE;>;",
        "Linet/ipaddr/format/util/AddressTrieOps<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Linet/ipaddr/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNewImpl(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    iput-object v0, p1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    return-object p1
.end method

.method private doLookup(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$OpResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->LOOKUP:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-object v0
.end method

.method private existingAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->added:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->added(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-void
.end method

.method private findNearest(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    invoke-virtual {v0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-interface {v0, p2}, Linet/ipaddr/AddressSegmentSeries;->isOneBit(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestFloor:Z

    if-eqz p2, :cond_1

    :cond_0
    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->backtrackNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_3

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    iput-object p2, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_3

    :cond_2
    move-object p2, v0

    goto :goto_0

    :cond_3
    iget-boolean p2, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestFloor:Z

    if-eqz p2, :cond_0

    move-object p2, p0

    :goto_2
    invoke-virtual {p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, v0

    goto :goto_2

    :goto_3
    return-void
.end method

.method private findNearestFromMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iget-boolean v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestFloor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->backtrackNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_3
    iput-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    :goto_4
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private findNodeNear(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZZ)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNearNoCheck(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method private findNodeNearNoCheck(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZZ)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$OpResult;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;ZZ)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v0, Linet/ipaddr/format/util/AddressTrie$OpResult;->backtrackNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-eqz p1, :cond_4

    :goto_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p3

    move-object v2, p3

    move-object p3, p1

    move-object p1, v2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    :goto_1
    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_2

    :goto_2
    iput-object p1, v0, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object p1, v0, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object p1
.end method

.method private handleContained(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I)V"
        }
    .end annotation

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->replace(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->SUBNET_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->removeSubnet(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_1
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNearest(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapNonExistingReplace(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleContains(Linet/ipaddr/format/util/AddressTrie$OpResult;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)Z"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->smallestContaining:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->CONTAINING:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Linet/ipaddr/format/util/AddressTrie$OpResult;->addContaining(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private handleMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->exists:Z

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleContains(Linet/ipaddr/format/util/AddressTrie$OpResult;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->LOOKUP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matched(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_1
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchedInserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_2
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERTED_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remove(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_3
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->SUBNET_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->removeSubnet(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_4
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearExclusive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNearestFromMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_5
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private handleSplitNode(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I)V"
        }
    .end annotation

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    iget-object v1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v2, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->split(Linet/ipaddr/format/util/AddressTrie$OpResult;ILinet/ipaddr/format/util/AddressTrie$TrieNode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNearest(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, v0, :cond_2

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapNonExistingSplit(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private inserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->added(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-void
.end method

.method public static matchBits(Linet/ipaddr/format/util/AddressTrie$TrieNode;ILinet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;I",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchNodeBits(ILinet/ipaddr/format/util/AddressTrie$OpResult;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchSubNode(ILinet/ipaddr/format/util/AddressTrie$OpResult;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private matchSubNode(ILinet/ipaddr/format/util/AddressTrie$OpResult;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    sget-boolean v1, Linet/ipaddr/format/util/BinaryTreeNode;->FREEZE_ROOT:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v1, :cond_0

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapNonAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto/16 :goto_7

    :cond_0
    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v1, :cond_d

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setKey(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->existingAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v1

    if-ge p1, v1, :cond_8

    invoke-interface {v0, p1}, Linet/ipaddr/AddressSegmentSeries;->isOneBit(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :goto_1
    invoke-direct {p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->inserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto/16 :goto_7

    :cond_2
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v0, :cond_6

    iget-boolean p1, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestFloor:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-eqz p1, :cond_d

    :goto_3
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iput-object v0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_7

    :cond_5
    :goto_4
    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->backtrackNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_7

    :cond_6
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v0, :cond_d

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapNonExisting(Linet/ipaddr/format/util/AddressTrie$OpResult;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_0

    :cond_7
    return-object p1

    :cond_8
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-nez p1, :cond_e

    iget-object p1, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v1, :cond_9

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_5
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_1

    :cond_9
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v0, :cond_c

    iget-boolean p1, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestFloor:Z

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-eqz p1, :cond_d

    :goto_6
    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    if-eqz p1, :cond_4

    goto :goto_6

    :cond_c
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne p1, v0, :cond_d

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapNonExisting(Linet/ipaddr/format/util/AddressTrie$OpResult;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    :goto_7
    const/4 p1, 0x0

    :cond_e
    return-object p1
.end method

.method private matched(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-void
.end method

.method private remapMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchedInserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    :cond_0
    return-void
.end method

.method private remapNonAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->existingAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    :cond_0
    return-void
.end method

.method private remapNonExisting(Linet/ipaddr/format/util/AddressTrie$OpResult;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private remapNonExistingReplace(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->replace(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    :cond_0
    return-void
.end method

.method private remapNonExistingSplit(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    invoke-direct {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->split(Linet/ipaddr/format/util/AddressTrie$OpResult;ILinet/ipaddr/format/util/AddressTrie$TrieNode;)V

    :cond_0
    return-void
.end method

.method private removeSubnet(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->deleted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->clear()V

    return-void
.end method

.method private replace(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$OpResult;ILinet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNew(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    iget p2, p0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    iput p2, p1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p2, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/Address;

    invoke-virtual {p2}, Linet/ipaddr/Address;->getBitCount()I

    move-result v0

    if-ge p3, v0, :cond_3

    invoke-interface {p2, p3}, Linet/ipaddr/AddressSegmentSeries;->isOneBit(I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p1, p4}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :cond_2
    invoke-virtual {p1, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    if-eqz p4, :cond_4

    invoke-virtual {p1, p4}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method private replace(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I)V"
        }
    .end annotation

    .line 2
    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->replace(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$OpResult;ILinet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p2

    invoke-direct {p2, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->inserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-void
.end method

.method private split(Linet/ipaddr/format/util/AddressTrie$OpResult;ILinet/ipaddr/format/util/AddressTrie$TrieNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;I",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    invoke-virtual {v0, p2}, Linet/ipaddr/Address;->setPrefixLength(I)Linet/ipaddr/Address;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->toPrefixBlock()Linet/ipaddr/Address;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->replace(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$OpResult;ILinet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-direct {p3, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->inserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-void
.end method


# virtual methods
.method public added(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setAdded(Z)V

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustCount(I)V

    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changed()V

    return-void
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->allNodeIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public asNewTrie()Linet/ipaddr/format/util/AddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->createNewTree()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    invoke-virtual {v0, p0}, Linet/ipaddr/format/util/AddressTrie;->addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public blockSizeAllNodeIterator(Z)Ljava/util/Iterator;
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

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->blockSizeNodeIterator(ZZ)Ljava/util/Iterator;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v0

    return-object v0
.end method

.method public blockSizeNodeIterator(Z)Ljava/util/Iterator;
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

    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->blockSizeNodeIterator(ZZ)Ljava/util/Iterator;

    move-result-object p1

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNear(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public ceilingNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNearNoCheck(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->clone()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTree()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object p1
.end method

.method public bridge synthetic cloneTree()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->containedFirstIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public contains(Linet/ipaddr/Address;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->doLookup(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$OpResult;

    move-result-object p1

    iget-boolean p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->exists:Z

    return p1
.end method

.method public abstract createNewImpl(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract createNewTree()Linet/ipaddr/format/util/AddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation
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

    invoke-virtual {p0, v1, v2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->reverseComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public elementContains(Linet/ipaddr/Address;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatch(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->doLookup(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$OpResult;

    move-result-object p1

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object p1
.end method

.method public elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->CONTAINING:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie$OpResult;->getContaining()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->equals(Ljava/lang/Object;)Z

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->firstAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic firstAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
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

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->firstNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic firstNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNear(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public floorNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNearNoCheck(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->doLookup(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$OpResult;

    move-result-object p1

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object p1
.end method

.method public getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic getParent()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNear(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public higherNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNearNoCheck(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public init(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    invoke-virtual {v0}, Linet/ipaddr/Address;->getBitCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Linet/ipaddr/AddressSegmentSeries;->isOneBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    iget p1, p1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    return-void
.end method

.method public lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->lastAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic lastAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
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

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->lastNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic lastNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public longestPrefixMatch(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->doLookup(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$OpResult;

    move-result-object p1

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->smallestContaining:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object p1
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

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNear(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerNodeNoCheck(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNodeNearNoCheck(Linet/ipaddr/Address;ZZ)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    return-object p1
.end method

.method public matchBits(ILinet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$TrieNode;ILinet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-void
.end method

.method public matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(ILinet/ipaddr/format/util/AddressTrie$OpResult;)V

    return-void
.end method

.method public matchNodeBits(ILinet/ipaddr/format/util/AddressTrie$OpResult;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)I"
        }
    .end annotation

    iget-object v0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    iget-object v1, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/AddressSegmentSeries;

    invoke-interface {v2}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v3

    div-int/2addr p1, v3

    invoke-interface {v2}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v4

    const/4 v5, -0x1

    if-lt p1, v4, :cond_2

    invoke-interface {v2}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2, p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleContained(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    :goto_0
    return v5

    :cond_1
    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleContains(Linet/ipaddr/format/util/AddressTrie$OpResult;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/Address;->getSegmentCount()I

    move-result v6

    if-ne v6, v4, :cond_12

    mul-int v6, p1, v3

    rsub-int/lit8 v7, v3, 0x20

    :goto_1
    invoke-interface {v2, p1}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v8

    invoke-interface {v0, p1}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v9

    invoke-static {v2, v6, v8}, Linet/ipaddr/format/util/AddressTrie;->access$000(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v6, v9}, Linet/ipaddr/format/util/AddressTrie;->access$000(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p1, :cond_a

    invoke-static {v8, v9, v0, v7}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v2

    if-lt v2, v0, :cond_9

    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-ne v0, p1, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto/16 :goto_5

    :cond_3
    sget-object p1, Linet/ipaddr/format/util/AddressTrie$Operation;->LOOKUP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, p1, :cond_4

    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_5

    :cond_4
    sget-object p1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, p1, :cond_5

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->existingAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_5

    :cond_5
    sget-object p1, Linet/ipaddr/format/util/AddressTrie$Operation;->SUBNET_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, p1, :cond_6

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->removeSubnet(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_5

    :cond_6
    sget-object p1, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, p1, :cond_7

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->findNearestFromMatch(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_5

    :cond_7
    sget-object p1, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    if-ne v1, p1, :cond_10

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->remapNonAdded(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    goto :goto_5

    :cond_8
    add-int/2addr v6, v0

    goto :goto_4

    :cond_9
    add-int/2addr v6, v2

    goto :goto_3

    :cond_a
    invoke-static {v8, v9, p1, v7}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v0

    if-lt v0, p1, :cond_c

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleContains(Linet/ipaddr/format/util/AddressTrie$OpResult;)Z

    :cond_b
    add-int/2addr p1, v6

    return p1

    :cond_c
    add-int/2addr v6, v0

    :goto_3
    invoke-direct {p0, p2, v6}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleSplitNode(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    goto :goto_5

    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v8, v9, p1, v7}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v0

    if-lt v0, p1, :cond_c

    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    add-int/2addr v6, p1

    :goto_4
    invoke-direct {p0, p2, v6}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->handleContained(Linet/ipaddr/format/util/AddressTrie$OpResult;I)V

    goto :goto_5

    :cond_e
    invoke-static {v8, v9, v3, v7}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v8

    if-ge v8, v3, :cond_f

    add-int/2addr v6, v8

    goto :goto_3

    :cond_f
    add-int/lit8 p1, p1, 0x1

    if-ne p1, v4, :cond_11

    iput-object p0, p2, Linet/ipaddr/format/util/AddressTrie$OpResult;->containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_2

    :cond_10
    :goto_5
    return v5

    :cond_11
    add-int/2addr v6, v3

    goto/16 :goto_1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ipaddress.error.mismatched.bit.size"

    invoke-static {p2}, Linet/ipaddr/format/util/BinaryTreeNode;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public matchedInserted(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->addedAlready:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-void
.end method

.method public nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic nextNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nextNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeIterator(Z)Ljava/util/Iterator;

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
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

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
    if-eqz p1, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->nodeComparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->reverseNodeComparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v1

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getParent()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v6

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v1

    int-to-long v7, v1

    iget-object v9, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v1, v0

    move v2, p1

    move-object v4, p0

    move v10, p2

    invoke-direct/range {v1 .. v10}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;-><init>(ZLjava/util/Comparator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;JLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Z)V

    return-object v0
.end method

.method public previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->previousNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object v0
.end method

.method public bridge synthetic previousNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->previousNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method public remap(Linet/ipaddr/format/util/AddressTrie$OpResult;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public remove(Linet/ipaddr/format/util/AddressTrie$OpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$OpResult<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie$OpResult;->deleted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    return-void
.end method

.method public remove(Linet/ipaddr/Address;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERTED_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-boolean p1, v0, Linet/ipaddr/format/util/AddressTrie$OpResult;->exists:Z

    return p1
.end method

.method public removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p1

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$OpResult;

    sget-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->SUBNET_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->matchBits(Linet/ipaddr/format/util/AddressTrie$OpResult;)V

    iget-object p1, v0, Linet/ipaddr/format/util/AddressTrie$OpResult;->deleted:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-object p1
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

    invoke-virtual {p0, v1, v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->nodeSpliterator(ZZ)Ljava/util/Spliterator;

    move-result-object v1

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Comparator;)V

    return-object v0
.end method
