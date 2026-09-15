.class public Linet/ipaddr/format/util/AddressTrieMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Linet/ipaddr/Address;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final isReverse:Z

.field trie:Linet/ipaddr/format/util/AssociativeAddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iput-boolean p2, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->isReverse:Z

    return-void
.end method


# virtual methods
.method public blockSizeIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->blockSizeNodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->clear()V

    return-void
.end method

.method public containedFirstIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containedFirstIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public containingFirstIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/Address;

    invoke-virtual {v0, v2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
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

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Queue;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->size()I

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

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeSpliterator(Z)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
