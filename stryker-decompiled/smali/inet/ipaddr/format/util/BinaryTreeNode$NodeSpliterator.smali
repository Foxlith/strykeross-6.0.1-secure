.class Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "Linet/ipaddr/format/util/BinaryTreeNode<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final addedOnly:Z

.field private begin:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

.field private end:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final forward:Z

.field private iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private position:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

.field private root:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private sizeEstimate:J


# direct methods
.method private constructor <init>(ZLjava/util/Comparator;Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;JLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;J",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->comparator:Ljava/util/Comparator;

    iput-wide p6, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->sizeEstimate:J

    iput-object p5, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object p4, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->position:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    iput-object p8, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    iput-boolean p9, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->addedOnly:Z

    iput-boolean p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->forward:Z

    invoke-virtual {p8}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->getCurrent()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;JLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;J",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            "Z)V"
        }
    .end annotation

    .line 2
    sget-object v3, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->ALL:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;-><init>(ZLjava/util/Comparator;Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;JLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Z)V

    move-object v1, p3

    iput-object v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method private createIterator()Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->forward:Z

    iget-boolean v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->addedOnly:Z

    iget-object v3, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    iget-object v4, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    iget-object v5, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;-><init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-object v6
.end method

.method private getMiddle()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->position:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    sget-object v1, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->BEGINNING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->forward:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v1, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->ENDING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->forward:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_3
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    :cond_4
    :goto_1
    return-object v0
.end method

.method private nextNode(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->forward:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->nextNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->previousNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private provideIterator()Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->createIterator()Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->position:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    sget-object v1, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->ALL:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x155

    goto :goto_0

    :cond_0
    const/16 v0, 0x115

    :goto_0
    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->sizeEstimate:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->provideIterator()Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->nextNoThrow()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->nextNoThrow()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spliterator from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;)Z"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->provideIterator()Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->nextNoThrow()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    iget-object v3, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v1, v3}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V

    invoke-direct/range {p0 .. p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->getMiddle()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v3, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    if-nez v3, :cond_2

    iget-object v3, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    goto :goto_0

    :cond_2
    iget-object v3, v3, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    if-nez v3, :cond_3

    return-object v2

    :cond_3
    :goto_0
    iget-object v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    if-ne v3, v4, :cond_4

    return-object v2

    :cond_4
    sget-object v4, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->ENDING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    iput-object v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->position:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    if-eq v3, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    goto/16 :goto_1

    :cond_5
    iput-object v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    iget-boolean v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->addedOnly:Z

    if-eqz v4, :cond_8

    :cond_6
    invoke-virtual {v3}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {v0, v3, v1}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->nextNode(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    if-eq v3, v1, :cond_7

    if-nez v3, :cond_6

    :cond_7
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1

    :cond_8
    move-object v8, v3

    iget-boolean v3, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->addedOnly:Z

    if-eqz v3, :cond_c

    move-object v3, v1

    :cond_9
    invoke-virtual {v3}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-direct {v0, v3, v4}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->nextNode(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v3

    iget-object v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    if-eq v3, v4, :cond_a

    if-nez v3, :cond_9

    :cond_a
    iput-object v8, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    iput-object v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    sget-object v2, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->BEGINNING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    iput-object v2, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->position:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    iget-object v2, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    if-eqz v2, :cond_b

    iput-object v1, v2, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    :cond_b
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1

    :cond_c
    iget-wide v14, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->sizeEstimate:J

    new-instance v3, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;

    iget-boolean v5, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->forward:Z

    iget-object v6, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->comparator:Ljava/util/Comparator;

    sget-object v7, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->BEGINNING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    const/16 v16, 0x1

    ushr-long v10, v14, v16

    iget-object v12, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->changeTracker:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;

    iget-boolean v13, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->addedOnly:Z

    move-object v4, v3

    move-object v9, v1

    invoke-direct/range {v4 .. v13}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;-><init>(ZLjava/util/Comparator;Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;JLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;Z)V

    const-wide/16 v4, 0x1

    add-long/2addr v14, v4

    ushr-long v4, v14, v16

    iput-wide v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->sizeEstimate:J

    iget-object v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    if-eqz v4, :cond_d

    iput-object v4, v3, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    iget-object v4, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    iput-object v1, v4, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->end:Linet/ipaddr/format/util/BinaryTreeNode;

    :cond_d
    iput-object v2, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->iterator:Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;

    return-object v3

    :cond_e
    :goto_1
    iput-object v3, v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->begin:Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v1

    return-object v1
.end method
