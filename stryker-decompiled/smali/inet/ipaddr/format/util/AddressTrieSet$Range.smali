.class public Linet/ipaddr/format/util/AddressTrieSet$Range;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrieSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final isReverse:Z

.field reversed:Linet/ipaddr/format/util/AddressTrieSet$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TE;>;"
        }
    .end annotation
.end field

.field final wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iput-boolean p2, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    return-void
.end method


# virtual methods
.method public getLowerBound()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->getUpperBound()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/Address;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->getLowerBound()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public getUpperBound()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->getLowerBound()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/Address;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->getUpperBound()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public isAboveUpperBound(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isBelowLowerBound(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isInBounds(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet$Range;->isWithinLowerBound(Linet/ipaddr/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet$Range;->isWithinUpperBound(Linet/ipaddr/Address;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLowerBounded()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->getLowerBound()Linet/ipaddr/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpperBounded()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->getUpperBound()Linet/ipaddr/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWithinLowerBound(Linet/ipaddr/Address;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet$Range;->isBelowLowerBound(Linet/ipaddr/Address;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isWithinUpperBound(Linet/ipaddr/Address;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieSet$Range;->isAboveUpperBound(Linet/ipaddr/Address;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public lowerIsInclusive()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperIsInclusive()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerIsInclusive()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public reverse()Linet/ipaddr/format/util/AddressTrieSet$Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->reversed:Linet/ipaddr/format/util/AddressTrieSet$Range;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->reversed:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iput-object p0, v0, Linet/ipaddr/format/util/AddressTrieSet$Range;->reversed:Linet/ipaddr/format/util/AddressTrieSet$Range;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v6, Lcom/google/android/material/color/utilities/o;

    const/16 v0, 0x9

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->getLowerBound()Linet/ipaddr/Address;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->lowerIsInclusive()Z

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->getUpperBound()Linet/ipaddr/Address;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->upperIsInclusive()Z

    move-result v3

    const-string v5, " -> "

    move-object v4, v6

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->toString(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperIsInclusive()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerIsInclusive()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieSet$Range;->wrapped:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperIsInclusive()Z

    move-result v0

    :goto_0
    return v0
.end method
