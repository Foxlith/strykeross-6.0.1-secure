.class public interface abstract Linet/ipaddr/format/util/AddressTrieOps$AddressTrieAddOps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressTrieOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrieOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddressTrieAddOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressTrieOps<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract add(Linet/ipaddr/Address;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract addNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract addTrie(Linet/ipaddr/format/util/AddressTrie$TrieNode;)Linet/ipaddr/format/util/AddressTrie$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$TrieNode<",
            "TE;>;"
        }
    .end annotation
.end method
