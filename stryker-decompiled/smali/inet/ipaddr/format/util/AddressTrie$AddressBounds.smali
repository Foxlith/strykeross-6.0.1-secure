.class public Linet/ipaddr/format/util/AddressTrie$AddressBounds;
.super Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressBounds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field oneAboveLowerBound:Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field oneAboveUpperBound:Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field oneBelowLowerBound:Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field oneBelowUpperBound:Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/Address;Linet/ipaddr/Address;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;-><init>(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;-><init>(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/Comparator;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3, p2}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    :cond_1
    return-void
.end method

.method public static createNewBounds(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(TE;ZTE;Z",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/Address;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Linet/ipaddr/Address;->isMax()Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p2

    :goto_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-object v2, p0

    move v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;-><init>(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)V

    return-object p0
.end method


# virtual methods
.method public createBounds(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;-><init>(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)V

    return-object v6
.end method

.method public bridge synthetic createBounds(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/Comparator;)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    check-cast p3, Linet/ipaddr/Address;

    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->createBounds(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->intersect(Ljava/lang/Object;ZLjava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    return-object p1
.end method

.method public bridge synthetic intersect(Ljava/lang/Object;ZLjava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    check-cast p3, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->intersect(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    return-object p1
.end method

.method public isAdjacentAboveLowerBound(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneAboveLowerBound:Linet/ipaddr/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    check-cast v0, Linet/ipaddr/Address;

    invoke-static {v0}, Linet/ipaddr/format/util/AddressTrie;->increment(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneAboveLowerBound:Linet/ipaddr/Address;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isAdjacentAboveLowerBound(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->isAdjacentAboveLowerBound(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public isAdjacentAboveUpperBound(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneAboveUpperBound:Linet/ipaddr/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    check-cast v0, Linet/ipaddr/Address;

    invoke-static {v0}, Linet/ipaddr/format/util/AddressTrie;->increment(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneAboveUpperBound:Linet/ipaddr/Address;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isAdjacentAboveUpperBound(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->isAdjacentAboveUpperBound(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public isAdjacentBelowLowerBound(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneBelowLowerBound:Linet/ipaddr/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    check-cast v0, Linet/ipaddr/Address;

    invoke-static {v0}, Linet/ipaddr/format/util/AddressTrie;->decrement(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneBelowLowerBound:Linet/ipaddr/Address;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isAdjacentBelowLowerBound(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->isAdjacentBelowLowerBound(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public isAdjacentBelowUpperBound(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneBelowUpperBound:Linet/ipaddr/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    check-cast v0, Linet/ipaddr/Address;

    invoke-static {v0}, Linet/ipaddr/format/util/AddressTrie;->decrement(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->oneBelowUpperBound:Linet/ipaddr/Address;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Linet/ipaddr/Address;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isAdjacentBelowUpperBound(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->isAdjacentBelowUpperBound(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public isMax(Linet/ipaddr/Address;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/Address;->isMax()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isMax(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->isMax(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public isMin(Linet/ipaddr/Address;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/Address;->isZero()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isMin(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->isMin(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public restrict(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Linet/ipaddr/format/util/AddressTrie$AddressBounds<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->restrict(Ljava/lang/Object;ZLjava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    return-object p1
.end method

.method public bridge synthetic restrict(Ljava/lang/Object;ZLjava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    check-cast p3, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->restrict(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    return-object p1
.end method

.method public toCanonicalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/o;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-virtual {p0, v0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->toString(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
