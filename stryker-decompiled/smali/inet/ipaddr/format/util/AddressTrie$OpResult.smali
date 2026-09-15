.class public Linet/ipaddr/format/util/AddressTrie$OpResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field added:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field addedAlready:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field addr:Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field backtrackNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field containedBy:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field containing:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field containingEnd:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field deleted:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field existingNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field existingValue:Ljava/lang/Object;

.field exists:Z

.field inserted:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field final nearExclusive:Z

.field final nearestFloor:Z

.field nearestNode:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field newValue:Ljava/lang/Object;

.field final op:Linet/ipaddr/format/util/AddressTrie$Operation;

.field remapper:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "**>;"
        }
    .end annotation
.end field

.field smallestContaining:Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Linet/ipaddr/format/util/AddressTrie$Operation;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;ZZ)V

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Linet/ipaddr/format/util/AddressTrie$Operation;",
            "ZZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->addr:Linet/ipaddr/Address;

    iput-object p2, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->op:Linet/ipaddr/format/util/AddressTrie$Operation;

    iput-boolean p3, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearestFloor:Z

    iput-boolean p4, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->nearExclusive:Z

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZZ)V"
        }
    .end annotation

    .line 3
    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-direct {p0, p1, v0, p2, p3}, Linet/ipaddr/format/util/AddressTrie$OpResult;-><init>(Linet/ipaddr/Address;Linet/ipaddr/format/util/AddressTrie$Operation;ZZ)V

    return-void
.end method

.method public static getNextAdded(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addContaining(Linet/ipaddr/format/util/AddressTrie$TrieNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->clone()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containing:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-nez v0, :cond_0

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containing:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    goto :goto_1

    :cond_0
    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->nodeComparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containingEnd:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containingEnd:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containingEnd:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :goto_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containingEnd:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustCount(I)V

    :goto_1
    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containingEnd:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    return-void
.end method

.method public getContaining()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containing:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    invoke-static {v0}, Linet/ipaddr/format/util/AddressTrie$OpResult;->getNextAdded(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrie$OpResult;->containing:Linet/ipaddr/format/util/AddressTrie$TrieNode;

    if-eqz v0, :cond_3

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getUpperSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Linet/ipaddr/format/util/AddressTrie$TrieNode;->getLowerSubNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v2

    invoke-static {v2}, Linet/ipaddr/format/util/AddressTrie$OpResult;->getNextAdded(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v3}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :cond_1
    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v2}, Linet/ipaddr/format/util/AddressTrie$OpResult;->getNextAdded(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v3}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_0

    :goto_1
    if-nez v1, :cond_0

    :cond_3
    return-object v0
.end method
