.class Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;
.super Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockSizeNodeIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator$Comp;
    }
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


# static fields
.field private static final COMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field

.field private static final REVERSE_COMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final addedOnly:Z

.field private final bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;"
        }
    .end annotation
.end field

.field queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator$Comp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator$Comp;-><init>(Z)V

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->COMP:Ljava/util/Comparator;

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator$Comp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator$Comp;-><init>(Z)V

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->REVERSE_COMP:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILinet/ipaddr/format/util/BinaryTreeNode$Bounds;ZLinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Linet/ipaddr/format/util/BinaryTreeNode$Bounds<",
            "TE;>;Z",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;Z",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, p6}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;-><init>(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    iput-boolean p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->addedOnly:Z

    iput-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    if-eqz p5, :cond_0

    sget-object p5, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->REVERSE_COMP:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object p5, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->COMP:Ljava/util/Comparator;

    :goto_0
    if-lez p1, :cond_2

    const/4 p6, 0x1

    shr-int/2addr p1, p6

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p6, p1

    :goto_1
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1, p6, p5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    :goto_2
    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->queue:Ljava/util/PriorityQueue;

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1, p5}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    goto :goto_2

    :goto_3
    invoke-virtual {p0, p4, v0, p2, p3}, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->getStart(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Z)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->next:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method public constructor <init>(IZLinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;Z",
            "Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;",
            ")V"
        }
    .end annotation

    .line 2
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;-><init>(ILinet/ipaddr/format/util/BinaryTreeNode$Bounds;ZLinet/ipaddr/format/util/BinaryTreeNode;ZLinet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;)V

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->lambda$getToNextOperation$0(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->lambda$getToNextOperation$2(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->lambda$getToNextOperation$1(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getToNextOperation$0(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 2

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getLowerSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getUpperSubNode()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method private static synthetic lambda$getToNextOperation$1(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 0

    invoke-static {p1, p2, p0}, Linet/ipaddr/format/util/BinaryTreeNode;->access$100(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getToNextOperation$2(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    invoke-static {p2, p3, p1, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->access$000(Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode$Bounds;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1
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

    new-instance v0, Linet/ipaddr/format/util/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Linet/ipaddr/format/util/j;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;I)V

    iget-boolean v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->addedOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Linet/ipaddr/format/util/k;

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/k;-><init>(Ljava/util/function/BinaryOperator;I)V

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->bounds:Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    if-eqz v1, :cond_1

    new-instance v1, Linet/ipaddr/format/util/l;

    invoke-direct {v1, p0, v0, v2}, Linet/ipaddr/format/util/l;-><init>(Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;Ljava/util/function/BinaryOperator;I)V

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;->operator:Ljava/util/function/BinaryOperator;

    :cond_2
    return-object v0
.end method
