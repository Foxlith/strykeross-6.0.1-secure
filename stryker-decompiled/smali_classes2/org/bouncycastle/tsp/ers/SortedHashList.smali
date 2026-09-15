.class public Lorg/bouncycastle/tsp/ers/SortedHashList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hashComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final baseList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/tsp/ers/ByteArrayComparator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/ByteArrayComparator;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/ers/SortedHashList;->hashComp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lorg/bouncycastle/tsp/ers/SortedHashList;->hashComp:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lorg/bouncycastle/tsp/ers/SortedHashList;->hashComp:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/SortedHashList;->baseList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
