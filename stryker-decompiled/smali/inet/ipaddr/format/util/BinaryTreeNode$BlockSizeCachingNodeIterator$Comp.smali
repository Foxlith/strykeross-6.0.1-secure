.class Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
        "TE;*>;>;"
    }
.end annotation


# instance fields
.field private final reverseBlocksEqualSize:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;->reverseBlocksEqualSize:Z

    return-void
.end method


# virtual methods
.method public compare(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
            "TE;*>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached<",
            "TE;*>;)I"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->node:Linet/ipaddr/format/util/BinaryTreeNode;

    iget-object p2, p2, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;->node:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p2}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linet/ipaddr/Address;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Linet/ipaddr/Address;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->compareLowValues(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;->reverseBlocksEqualSize:Z

    if-eqz p2, :cond_1

    neg-int p1, p1

    :cond_1
    return p1

    :cond_2
    return v0

    :cond_3
    const/4 p1, -0x1

    return p1

    :cond_4
    invoke-virtual {p2}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    invoke-static {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->compareLowValues(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;->reverseBlocksEqualSize:Z

    if-eqz p2, :cond_6

    neg-int p1, p1

    :cond_6
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Comp;->compare(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator$Cached;)I

    move-result p1

    return p1
.end method
