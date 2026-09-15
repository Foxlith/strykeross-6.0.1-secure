.class public interface abstract Linet/ipaddr/format/util/AddressTrieOps$AssociativeAddressTrieOps;
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
    name = "AssociativeAddressTrieOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Linet/ipaddr/Address;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressTrieOps<",
        "TK;>;"
    }
.end annotation


# virtual methods
.method public abstract get(Linet/ipaddr/Address;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method
