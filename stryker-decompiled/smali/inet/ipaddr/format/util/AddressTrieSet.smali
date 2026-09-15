.class public Linet/ipaddr/format/util/AddressTrieSet;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/AddressTrieSet$Range;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TE;>;"
        }
    .end annotation
.end field

.field private descending:Linet/ipaddr/format/util/AddressTrieSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final isReverse:Z

.field private trie:Linet/ipaddr/format/util/AddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    if-nez v0, :cond_0

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    :cond_0
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;",
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iput-object p2, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iput-boolean p3, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    :cond_0
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    if-nez v0, :cond_0

    iput-object p0, p1, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isBounded()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toSubSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v2, p4

    move p4, p2

    move p2, v2

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    if-eqz v0, :cond_1

    iget-object v0, v0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->createNewBounds(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->restrict(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    return-object p0

    :cond_3
    new-instance p2, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean p3, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {p2, p1, p3}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    new-instance p3, Linet/ipaddr/format/util/AddressTrieSet;

    iget-object p4, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {p4, p1}, Linet/ipaddr/format/util/AddressTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    iget-boolean p4, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {p3, p1, p2, p4}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object p3
.end method


# virtual methods
.method public add(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->add(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->add(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public asTrie()Linet/ipaddr/format/util/AddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrieSet;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iput-object p0, v0, Linet/ipaddr/format/util/AddressTrie;->set:Linet/ipaddr/format/util/AddressTrieSet;

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    return-object v0
.end method

.method public blockSizeIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/AddressTrie;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public ceiling(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    return-object p1
.end method

.method public bridge synthetic ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->ceiling(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->clear()V

    return-void
.end method

.method public clone()Linet/ipaddr/format/util/AddressTrieSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/AddressTrieSet;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v2}, Linet/ipaddr/format/util/AddressTrie;->clone()Linet/ipaddr/format/util/AddressTrie;

    move-result-object v2

    iput-object v2, v1, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-object v3, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-object v3, v3, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iput-object v3, v2, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iput-object v0, v1, Linet/ipaddr/format/util/AddressTrieSet;->descending:Linet/ipaddr/format/util/AddressTrieSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->clone()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->reverseComparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->comparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public containedFirstIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/AddressTrie;->containedFirstIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public containingFirstIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/AddressTrie;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->contains(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public descendingSet()Linet/ipaddr/format/util/AddressTrieSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->descending:Linet/ipaddr/format/util/AddressTrieSet;

    if-nez v0, :cond_1

    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrieSet;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->reverse()Linet/ipaddr/format/util/AddressTrieSet$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Linet/ipaddr/format/util/AddressTrieSet;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-boolean v3, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    iput-object v1, p0, Linet/ipaddr/format/util/AddressTrieSet;->descending:Linet/ipaddr/format/util/AddressTrieSet;

    iput-object p0, v1, Linet/ipaddr/format/util/AddressTrieSet;->descending:Linet/ipaddr/format/util/AddressTrieSet;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->descendingSet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public elementContains(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementContainsBounds(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_1

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet;

    const/4 v1, 0x0

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0

    :cond_1
    new-instance v1, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0
.end method

.method public elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_1

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet;

    const/4 v1, 0x0

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0

    :cond_1
    new-instance v1, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/AddressTrieSet;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/util/AddressTrieSet;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public first()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->first()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public floor(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    return-object p1
.end method

.method public bridge synthetic floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->floor(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public getRange()Linet/ipaddr/format/util/AddressTrieSet$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    return-object v0
.end method

.method public hasRestrictedRange()Z
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/format/util/AddressTrieSet;->isBounded()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->hashCode()I

    move-result v0

    return v0
.end method

.method public headSet(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrieSet;->headSet(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Linet/ipaddr/format/util/AddressTrieSet;->toSubSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieSet;->headSet(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->headSet(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    return-object p1
.end method

.method public bridge synthetic higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->higher(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public last()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->last()Linet/ipaddr/Address;

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

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->longestPrefixMatchBounds(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public lower(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    return-object p1
.end method

.method public bridge synthetic lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->lower(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    return-object v0
.end method

.method public bridge synthetic pollFirst()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->pollFirst()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/Address;

    return-object v0
.end method

.method public bridge synthetic pollLast()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->pollLast()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->remove(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Queue;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/format/util/d;

    invoke-direct {v0, v1, p1}, Linet/ipaddr/format/util/d;-><init>(ILjava/util/Collection;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Linet/ipaddr/format/util/AddressTrieSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->descendingSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public subSet(Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Linet/ipaddr/format/util/AddressTrieSet;->subSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrieSet;->toSubSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/Address;

    check-cast p3, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrieSet;->subSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    check-cast p2, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieSet;->subSet(Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrieSet;->tailSet(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Linet/ipaddr/format/util/AddressTrieSet;->toSubSet(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieSet;->tailSet(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->tailSet(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object p1

    return-object p1
.end method

.method public toTrieString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet;->trie:Linet/ipaddr/format/util/AddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
