.class Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;
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
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final wrapped:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "+",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    iput-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->lambda$wrapAction$0(Ljava/util/function/Consumer;Linet/ipaddr/format/util/BinaryTreeNode;)V

    return-void
.end method

.method private static synthetic lambda$wrapAction$0(Ljava/util/function/Consumer;Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static wrapAction(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)",
            "Ljava/util/function/Consumer<",
            "-",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/m;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/m;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-static {p1}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapAction(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-static {p1}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapAction(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->wrapped:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;

    iget-object v2, p0, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/BinaryTreeNode$KeySpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Comparator;)V

    return-object v1
.end method
