.class abstract Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractNodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Linet/ipaddr/format/util/BinaryTreeNode<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

.field current:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

.field end:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field next:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field operator:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->getCurrent()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    :cond_0
    return-void
.end method


# virtual methods
.method public doNext()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->toNext(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    return-object v0
.end method

.method public getStart(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Z)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;Z)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    if-eq p1, p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;->isInBounds(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->toNext(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getToNextOperation()Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->doNext()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextNoThrow()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->doNext()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V

    :cond_0
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    const/4 v1, 0x0

    iput-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->current:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->getCurrent()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ipaddress.error.no.iterator.element.to.remove"

    invoke-static {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toNext(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getToNextOperation()Ljava/util/function/BinaryOperator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    return-object p1
.end method
