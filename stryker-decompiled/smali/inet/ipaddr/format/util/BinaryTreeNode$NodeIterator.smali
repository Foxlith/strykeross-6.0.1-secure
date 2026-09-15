.class Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;
.super Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final addedOnly:Z

.field final forward:Z


# direct methods
.method public constructor <init>(ZZLinet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    iput-boolean p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;->forward:Z

    iput-boolean p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;->addedOnly:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getStart(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Z)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;->lambda$getToNextOperation$0(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getToNextOperation$0(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    invoke-static {p1, p2, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->access$100(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getToNextOperation()Ljava/util/function/BinaryOperator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;->forward:Z

    if-eqz v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/i;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/format/util/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/i;-><init>(I)V

    :goto_0
    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;->addedOnly:Z

    if-eqz v1, :cond_1

    new-instance v1, Linet/ipaddr/format/util/k;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/k;-><init>(Ljava/util/function/BinaryOperator;I)V

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    :cond_2
    return-object v0
.end method
