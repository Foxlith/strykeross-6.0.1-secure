.class public Linet/ipaddr/format/util/AddressTrie$TrieComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linet/ipaddr/format/util/BinaryTreeNode<",
        "TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrie$TrieComparator;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/Address;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$TrieComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$TrieComparator;->compare(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)I

    move-result p1

    return p1
.end method
