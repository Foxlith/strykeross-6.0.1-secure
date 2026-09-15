.class public Linet/ipaddr/format/util/BinaryTreeNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/TreeOps;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/BinaryTreeNode$Indents;,
        Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;,
        Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;,
        Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/TreeOps<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ADDED_NODE_CIRCLE:Ljava/lang/String; = "\u25cf"

.field static final BELOW_ELBOWS:Ljava/lang/String; = "  "

.field protected static FREEZE_ROOT:Z = true

.field static final IN_BETWEEN_ELBOWS:Ljava/lang/String; = "\u2502 "

.field static final LEFT_ELBOW:Ljava/lang/String; = "\u251c\u2500"

.field static final NON_ADDED_NODE_CIRCLE:Ljava/lang/String; = "\u25cb"

.field static final RIGHT_ELBOW:Ljava/lang/String; = "\u2514\u2500"

.field static final SIZE_UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private added:Z

.field changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lower:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private parent:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field size:I

.field private upper:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->item:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Linet/ipaddr/format/util/BinaryTreeNode;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->lambda$nextInBounds$0(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Linet/ipaddr/format/util/BinaryTreeNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/util/BinaryTreeNode;->nextInBounds(Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->nextAdded(Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private adjustTree(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;IZ)V"
        }
    .end annotation

    iget v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    neg-int v0, v0

    if-nez p2, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p2

    if-nez p2, :cond_2

    sget-boolean p2, Linet/ipaddr/format/util/BinaryTreeNode;->FREEZE_ROOT:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isRoot()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    iget p2, p1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    add-int/2addr p2, v0

    iput p2, p1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThisRecursive(Linet/ipaddr/format/util/BinaryTreeNode;I)V

    goto :goto_1

    :cond_2
    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustCount(I)V

    goto :goto_1

    :cond_3
    iget p2, p2, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustCount(I)V

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setParent(Linet/ipaddr/format/util/BinaryTreeNode;)V

    return-void
.end method

.method public static compareLowValues(Linet/ipaddr/Address;Linet/ipaddr/Address;)I
    .locals 1

    sget-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    invoke-virtual {v0, p0, p1}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p0

    return p0
.end method

.method private containedFirstIterator(ZZ)Ljava/util/Iterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;

    const/4 v1, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->firstPostOrderNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v4

    iget-object v5, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object p1

    :cond_0
    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->lastPreOrderNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v9

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v10

    iget-object v11, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v6, p1

    move v8, p2

    invoke-direct/range {v6 .. v11}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object p1
.end method

.method private containingFirstIterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(ZZ)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;

    const/4 v1, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v4

    iget-object v5, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object p1

    :cond_0
    new-instance p1, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v10

    iget-object v11, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v6, p1

    move v8, p2

    move-object v9, p0

    invoke-direct/range {v6 .. v11}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object p1
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/util/AbstractTree;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private iterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->firstNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->lastNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v4

    iget-object v5, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object v6
.end method

.method private static synthetic lambda$nextInBounds$0(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Linet/ipaddr/format/util/BinaryTreeNode;)Z
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private nextAdded(Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/h;-><init>(I)V

    invoke-static {p0, p1, p2, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextTest(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Ljava/util/function/Predicate;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1
.end method

.method private nextInBounds(Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/g;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Linet/ipaddr/format/util/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p1, p2, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextTest(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Ljava/util/function/Predicate;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1
.end method

.method private static nextTest(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Ljava/util/function/Predicate;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linet/ipaddr/format/util/BinaryTreeNode;

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p3, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public adjustCount(I)V
    .locals 2

    if-eqz p1, :cond_1

    move-object v0, p0

    :cond_0
    iget v1, v0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public allNodeIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->iterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    move-result-object p1

    return-object p1
.end method

.method public blockSizeCachingAllNodeIterator()Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-direct {v0, p0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object v0
.end method

.method public blockSizeNodeIterator(ZZ)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    xor-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, v6

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;-><init>(IZLinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object v6
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThis(Linet/ipaddr/format/util/BinaryTreeNode;)V

    return-void
.end method

.method public clone()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setParent(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {v1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {v1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v2

    iput v2, v1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    iput-object v0, v1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->clone()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneTree()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-direct {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;-><init>()V

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1
.end method

.method public cloneTree(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTreeNode(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode$SubNodeCachingIterator;

    const/4 v3, 0x0

    move-object v4, v0

    :cond_0
    invoke-virtual {v4}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v5

    if-eqz p2, :cond_4

    :goto_0
    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isWithinLowerBound(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v6

    :cond_2
    invoke-virtual {v6}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    move-object v5, v3

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v5

    move v3, v1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTreeNode(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :goto_2
    invoke-virtual {v4}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v5

    if-eqz p2, :cond_9

    :goto_3
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isWithinUpperBound(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v7

    :cond_7
    invoke-virtual {v7}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    move-object v5, v3

    move v3, v1

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v5

    move v3, v1

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    invoke-virtual {v5, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->cloneTreeNode(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v6}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :goto_5
    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next()Linet/ipaddr/format/util/BinaryTreeNode;

    iget-object v4, v2, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isRoot()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p2

    if-nez p2, :cond_c

    move-object v0, p1

    :cond_c
    :goto_6
    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    const/4 p1, -0x1

    iput p1, v0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    :cond_d
    return-object v0
.end method

.method public cloneTreeNode(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setParent(Linet/ipaddr/format/util/BinaryTreeNode;)V

    iput-object p1, v1, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public containedFirstAllNodeIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->containedFirstIterator(ZZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public containedFirstIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->containedFirstIterator(ZZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->containingFirstIterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public containingFirstIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;TE;TC;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->containingFirstIterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public firstAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->firstNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public firstNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public firstPostOrderNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->lower:Linet/ipaddr/format/util/BinaryTreeNode;

    return-object v0
.end method

.method public getNodeIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->parent:Linet/ipaddr/format/util/BinaryTreeNode;

    return-object v0
.end method

.method public getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->upper:Linet/ipaddr/format/util/BinaryTreeNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdded()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->added:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeaf()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoot()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->parent:Linet/ipaddr/format/util/BinaryTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public lastAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->lastNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public lastNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public lastPreOrderNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public nextAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/i;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextAdded(Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    return-object v1

    :cond_2
    move-object v2, p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v2

    if-ne v2, p1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public nextPostOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-ne p1, p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public nextPreOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public nodeIterator(Z)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->iterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    move-result-object p1

    return-object p1
.end method

.method public nodeSize()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->iterator(ZZ)Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public previousAddedNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/i;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nextAdded(Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public previousNode()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->previousNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public previousNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    return-object v1

    :cond_2
    move-object v2, p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v2

    if-ne v2, p1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public previousPostOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public previousPreOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-ne p1, p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;ZZLinet/ipaddr/format/util/BinaryTreeNode$CachingIterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Linet/ipaddr/format/util/BinaryTreeNode$Indents;",
            "ZZ",
            "Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;TE;",
            "Linet/ipaddr/format/util/BinaryTreeNode$Indents;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Linet/ipaddr/format/util/BinaryTreeNode;

    .line 12
    .line 13
    invoke-interface {p5}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->getCached()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p2, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->nodeIndent:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p2, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->subNodeInd:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v2, v1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->nodeIndent:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, v1, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->subNodeInd:Ljava/lang/String;

    .line 29
    .line 30
    move-object v6, v2

    .line 31
    move-object v2, v1

    .line 32
    move-object v1, v6

    .line 33
    :goto_1
    if-nez p3, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "\u25cb\n"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    if-eqz p4, :cond_4

    .line 58
    .line 59
    const-string v1, " ("

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x29

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    const/16 v1, 0xa

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v3, "  "

    .line 90
    .line 91
    const-string v4, "\u2514\u2500"

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 98
    .line 99
    const-string v1, "\u251c\u2500"

    .line 100
    .line 101
    invoke-static {v2, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v5, "\u2502 "

    .line 106
    .line 107
    invoke-static {v2, v5}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-direct {v0, v1, v5}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p5, v0}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithLowerSubNode(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_5
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 118
    .line 119
    invoke-static {v2, v4}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v2, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p5, v0}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithUpperSubNode(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_6
    if-eqz v0, :cond_0

    .line 136
    .line 137
    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    .line 138
    .line 139
    invoke-static {v2, v4}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v2, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p5, v0}, Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;->cacheWithLowerSubNode(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_7
    return-void
.end method

.method public remove()V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Linet/ipaddr/format/util/BinaryTreeNode;->FREEZE_ROOT:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->removed()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThis(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public removed()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustCount(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setAdded(Z)V

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changed()V

    return-void
.end method

.method public replaceThis(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThisRecursive(Linet/ipaddr/format/util/BinaryTreeNode;I)V

    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changed()V

    return-void
.end method

.method public replaceThisRecursive(Linet/ipaddr/format/util/BinaryTreeNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getParent()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-ne v1, p0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustTree(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;IZ)V

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-ne v1, p0, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustTree(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;IZ)V

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method public replaceThisRoot(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->setAdded(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    sget-boolean v1, Linet/ipaddr/format/util/BinaryTreeNode;->FREEZE_ROOT:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setKey(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iput p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setAdded(Z)V

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setKey(Ljava/lang/Object;)V

    iget p1, p1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setAdded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->added:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->setAdded(Z)V

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->adjustCount(I)V

    :cond_0
    return-void
.end method

.method public setAdded(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->added:Z

    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->item:Ljava/lang/Object;

    return-void
.end method

.method public setLower(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->lower:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->setParent(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :cond_0
    return-void
.end method

.method public setParent(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->parent:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method public setUpper(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode;->upper:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->setParent(Linet/ipaddr/format/util/BinaryTreeNode;)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 4

    iget v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->containedFirstAllNodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v2

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, v3, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    add-int/2addr v2, v3

    :cond_0
    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v3, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    add-int/2addr v2, v3

    :cond_1
    iput v2, v1, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    goto :goto_0

    :cond_2
    iget v0, p0, Linet/ipaddr/format/util/BinaryTreeNode;->size:I

    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u25cf "

    goto :goto_0

    :cond_0
    const-string v1, "\u25cb "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->getNodeIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTreeString(ZZ)Ljava/lang/String;
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    invoke-direct {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->containingFirstAllNodeIterator(Z)Linet/ipaddr/format/util/BinaryTreeNode$CachingIterator;

    move-result-object v5

    move-object v0, p0

    move-object v1, v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode;->printTree(Ljava/lang/StringBuilder;Linet/ipaddr/format/util/BinaryTreeNode$Indents;ZZLinet/ipaddr/format/util/BinaryTreeNode$CachingIterator;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public treeEquals(Linet/ipaddr/format/util/BinaryTreeNode;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v2, v4}, Linet/ipaddr/format/util/BinaryTreeNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    return v0
.end method

.method public treeHashCode()I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
