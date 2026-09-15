.class public interface abstract Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTriePutOps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTrieOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrieOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssociativeAddressTriePutOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Linet/ipaddr/Address;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTrieOps<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract put(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public abstract putNew(Linet/ipaddr/Address;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation
.end method

.method public abstract putNode(Linet/ipaddr/Address;Ljava/lang/Object;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract putTrie(Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract remap(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TV;+TV;>;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract remapIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Supplier<",
            "+TV;>;Z)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation
.end method
