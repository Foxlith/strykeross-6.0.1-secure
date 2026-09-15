.class public interface abstract Linet/ipaddr/format/util/AddressTrieOps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/TreeOps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTriePutOps;,
        Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTrieOps;,
        Linet/ipaddr/format/util/AddressTrieOps$AddressTrieAddOps;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/TreeOps<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract allNodeIterator(Z)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract allNodeSpliterator(Z)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract containedFirstIterator(Z)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
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
.end method

.method public abstract containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
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
.end method

.method public abstract contains(Linet/ipaddr/Address;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract elementContains(Linet/ipaddr/Address;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract elementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract elementsContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract firstAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract firstNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0, p1}, Linet/ipaddr/format/util/AddressTrieOps;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public abstract getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lastAddedNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lastNode()Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract longestPrefixMatch(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public abstract longestPrefixMatchNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract nodeIterator(Z)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract nodeSpliterator(Z)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract remove(Linet/ipaddr/Address;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract removeElementsContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method
