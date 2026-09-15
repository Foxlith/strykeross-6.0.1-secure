.class Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bounds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final lowerBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final lowerInclusive:Z

.field final upperBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final upperInclusive:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->comparator:Ljava/util/Comparator;

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    iput-object p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    iput-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    iput-boolean p4, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ipaddress.error.address.lower.exceeds.upper"

    invoke-static {p5}, Linet/ipaddr/format/util/BinaryTreeNode;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static toString(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;ZTE;Z",
            "Ljava/util/function/Function<",
            "-TE;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "-TE;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_1

    :cond_0
    invoke-interface {p4, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "["

    .line 2
    :goto_0
    invoke-static {p1, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p1, "("

    goto :goto_0

    :goto_1
    if-nez p2, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-interface {p6, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    goto :goto_2

    .line 4
    :goto_3
    invoke-static {p0, p5, v0}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareToLowerBound(Ljava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isLowerBounded()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->convertEquivBoundaryComparison(I)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_2

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAdjacentAboveLowerBound(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_EXCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_3
    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_4
    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gtz p2, :cond_5

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAdjacentBelowLowerBound(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_INCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_6
    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isMin(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_UNBOUNDED:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_8
    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1
.end method

.method public compareToUpperBound(Ljava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isUpperBounded()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->convertEquivBoundaryComparison(I)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_2

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAdjacentBelowUpperBound(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_EXCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_3
    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_4
    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gtz p2, :cond_5

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAdjacentAboveUpperBound(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_INCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_6
    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isMax(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_UNBOUNDED:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1

    :cond_8
    sget-object p1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p1
.end method

.method public createBounds(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/Comparator;)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;-><init>(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/Comparator;)V

    return-object v6
.end method

.method public getLowerBound()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    return-object v0
.end method

.method public getUpperBound()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    return-object v0
.end method

.method public intersect(Ljava/lang/Object;ZLjava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->restrict(Ljava/lang/Object;ZLjava/lang/Object;ZZ)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public isAboveUpperBound(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isUpperBounded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isAdjacentAboveLowerBound(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isAdjacentAboveUpperBound(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isAdjacentBelowLowerBound(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isAdjacentBelowUpperBound(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isBelowLowerBound(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isLowerBounded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isInBounds(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isWithinLowerBound(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isWithinUpperBound(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMax(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isMin(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isUnbounded()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isLowerBounded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isUpperBounded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpperBounded()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWithinLowerBound(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isBelowLowerBound(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isWithinUpperBound(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isAboveUpperBound(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public lowerIsInclusive()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    return v0
.end method

.method public restrict(Ljava/lang/Object;ZLjava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->restrict(Ljava/lang/Object;ZLjava/lang/Object;ZZ)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    move-result-object p1

    return-object p1
.end method

.method public restrict(Ljava/lang/Object;ZLjava/lang/Object;ZZ)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;ZZ)",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;"
        }
    .end annotation

    .line 2
    const-string v0, " "

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compareToLowerBound(Ljava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->isLessRestrictive()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p5, :cond_0

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ipaddress.error.lower.below.range"

    invoke-static {p4}, Linet/ipaddr/format/util/BinaryTreeNode;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->isMoreRestrictive()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_INCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p0, p3, p4}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->compareToUpperBound(Ljava/lang/Object;Z)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->isLessRestrictive()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p5, :cond_3

    :goto_2
    move-object p3, v1

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ipaddress.error.lower.above.range"

    invoke-static {p4}, Linet/ipaddr/format/util/BinaryTreeNode;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->isMoreRestrictive()Z

    move-result p5

    if-nez p5, :cond_5

    sget-object p5, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_INCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    if-eq v2, p5, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-nez p1, :cond_7

    if-nez p3, :cond_6

    return-object v1

    :cond_6
    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerBound:Ljava/lang/Object;

    iget-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerInclusive:Z

    :cond_7
    move-object v1, p1

    move v2, p2

    if-nez p3, :cond_8

    iget-object p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperBound:Ljava/lang/Object;

    iget-boolean p4, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    :cond_8
    move-object v3, p3

    move v4, p4

    iget-object v5, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->comparator:Ljava/util/Comparator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->createBounds(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/Comparator;)Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    move-result-object p1

    return-object p1
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " -> "

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->toCanonicalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/material/color/utilities/o;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-virtual {p0, v0, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->toString(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TE;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "-TE;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->getLowerBound()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->lowerIsInclusive()Z

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->getUpperBound()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperIsInclusive()Z

    move-result v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->toString(Ljava/lang/Object;ZLjava/lang/Object;ZLjava/util/function/Function;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public upperIsInclusive()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->upperInclusive:Z

    return v0
.end method
