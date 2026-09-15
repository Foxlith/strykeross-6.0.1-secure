.class public Linet/ipaddr/format/util/AddressTrieMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/AddressTrieMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Linet/ipaddr/Address;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TK;>;"
        }
    .end annotation
.end field

.field private descending:Linet/ipaddr/format/util/AddressTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private entrySet:Linet/ipaddr/format/util/AddressTrieMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieMap$EntrySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final isReverse:Z

.field private keySet:Linet/ipaddr/format/util/AddressTrieSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private trie:Linet/ipaddr/format/util/AssociativeAddressTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/AssociativeAddressTrie;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-object v0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    if-nez v0, :cond_0

    iput-object p0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    :cond_0
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;",
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TK;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iput-object p2, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iput-boolean p3, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    iget-object v0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    iput-object p0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    :cond_0
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-object v0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    if-nez v0, :cond_0

    iput-object p0, p1, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Linet/ipaddr/Address;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->lambda$computeIfAbsent$2(Ljava/util/function/Function;Linet/ipaddr/Address;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/format/util/AddressTrieMap;->lambda$putIfAbsent$3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->lambda$merge$0(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/function/BiFunction;Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->lambda$compute$1(Ljava/util/function/BiFunction;Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->getAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$compute$1(Ljava/util/function/BiFunction;Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$computeIfAbsent$2(Ljava/util/function/Function;Linet/ipaddr/Address;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$merge$0(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$putIfAbsent$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private toSubMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    move-object v2, p3

    move-object p3, p1

    move-object p1, v2

    move v3, p4

    move p4, p2

    move p2, v3

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-object v1, v0, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->createNewBounds(Linet/ipaddr/Address;ZLinet/ipaddr/Address;ZLjava/util/Comparator;)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrie$AddressBounds;->restrict(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return-object p0

    :cond_2
    new-instance p2, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean p3, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {p2, p1, p3}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    new-instance p3, Linet/ipaddr/format/util/AddressTrieMap;

    iget-object p4, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {p4, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->createSubTrie(Linet/ipaddr/format/util/AddressTrie$AddressBounds;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    iget-boolean p4, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {p3, p1, p2, p4}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object p3
.end method


# virtual methods
.method public asTrie()Linet/ipaddr/format/util/AssociativeAddressTrie;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AssociativeAddressTrie<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iput-object p0, v0, Linet/ipaddr/format/util/AssociativeAddressTrie;->map:Linet/ipaddr/format/util/AddressTrieMap;

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    return-object v0
.end method

.method public ceilingEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->ceilingEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public ceilingKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->ceiling(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->ceilingKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->clear()V

    return-void
.end method

.method public clone()Linet/ipaddr/format/util/AddressTrieMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/AddressTrieMap;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->clone()Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object v2

    iput-object v2, v1, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-object v3, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-object v3, v3, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iput-object v3, v2, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    iput-object v0, v1, Linet/ipaddr/format/util/AddressTrieMap;->keySet:Linet/ipaddr/format/util/AddressTrieSet;

    iput-object v0, v1, Linet/ipaddr/format/util/AddressTrieMap;->entrySet:Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    iput-object v0, v1, Linet/ipaddr/format/util/AddressTrieMap;->descending:Linet/ipaddr/format/util/AddressTrieMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->clone()Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->reverseComparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Linet/ipaddr/format/util/AddressTrie;->comparator()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public compute(Linet/ipaddr/Address;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    new-instance v1, Linet/ipaddr/format/util/c;

    invoke-direct {v1, p1, p2}, Linet/ipaddr/format/util/c;-><init>(Linet/ipaddr/Address;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remap(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->compute(Linet/ipaddr/Address;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    new-instance v1, Linet/ipaddr/format/util/a;

    invoke-direct {v1, p2, p1}, Linet/ipaddr/format/util/a;-><init>(Ljava/util/function/Function;Linet/ipaddr/Address;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, v1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remapIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->computeIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfPresent(Linet/ipaddr/Address;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->computeIfPresent(Linet/ipaddr/Address;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->contains(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-virtual {v2}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public descendingKeySet()Linet/ipaddr/format/util/AddressTrieSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->descendingMap()Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->descendingKeySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Linet/ipaddr/format/util/AddressTrieMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->descending:Linet/ipaddr/format/util/AddressTrieMap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrieSet$Range;->reverse()Linet/ipaddr/format/util/AddressTrieSet$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Linet/ipaddr/format/util/AddressTrieMap;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v3, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    iput-object v1, p0, Linet/ipaddr/format/util/AddressTrieMap;->descending:Linet/ipaddr/format/util/AddressTrieMap;

    iput-object p0, v1, Linet/ipaddr/format/util/AddressTrieMap;->descending:Linet/ipaddr/format/util/AddressTrieMap;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->descendingMap()Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Linet/ipaddr/format/util/AddressTrieMap$EntrySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieMap$EntrySet<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->entrySet:Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/AddressTrieMap$EntrySet;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Z)V

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->entrySet:Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->entrySet()Linet/ipaddr/format/util/AddressTrieMap$EntrySet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/AddressTrieMap;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/util/AddressTrieMap;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-object p1, p1, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public firstKey()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrieSet;->first()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->firstKey()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->ceilingAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->floorAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->floorEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public floorKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->floor(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->floorKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->get(Linet/ipaddr/Address;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    check-cast p1, Linet/ipaddr/Address;

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public getRange()Linet/ipaddr/format/util/AddressTrieSet$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet$Range<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    return-object v0
.end method

.method public hasRestrictedRange()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->isBounded()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->hashCode()I

    move-result v0

    return v0
.end method

.method public headMap(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrieMap;->headMap(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->toSubMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->headMap(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->headMap(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->higherEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public higherKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->higher(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->higherKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public isBounded()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyContains(Linet/ipaddr/Address;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrie;->elementContainsBounds(Linet/ipaddr/Address;)Z

    move-result p1

    return p1
.end method

.method public keySet()Linet/ipaddr/format/util/AddressTrieSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->keySet:Linet/ipaddr/format/util/AddressTrieSet;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/AddressTrieSet;

    iget-object v1, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-object v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->bounds:Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean v3, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/format/util/AddressTrieSet;-><init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    iput-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->keySet:Linet/ipaddr/format/util/AddressTrieSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public lastKey()Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrieSet;->last()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->lastKey()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public longestPrefixMatchEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->smallestElementContainingBounds(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    return-object p1
.end method

.method public lowerEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->higherAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lowerAddedNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->lowerEntry(Linet/ipaddr/Address;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lowerKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AddressTrieSet;->lower(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->lowerKey(Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public merge(Linet/ipaddr/Address;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    new-instance v1, Linet/ipaddr/format/util/c;

    invoke-direct {v1, p2, p3}, Linet/ipaddr/format/util/c;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remap(Linet/ipaddr/Address;Ljava/util/function/Function;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/util/AddressTrieMap;->merge(Linet/ipaddr/Address;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public navigableKeySet()Linet/ipaddr/format/util/AddressTrieSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressTrieSet<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->keySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AddressTrieMap;->navigableKeySet()Linet/ipaddr/format/util/AddressTrieSet;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->firstAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AssociativeAddressTrie;->lastAddedNode()Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    return-object v0
.end method

.method public put(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->put(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->put(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    new-instance v1, Linet/ipaddr/format/util/b;

    invoke-direct {v1, p2}, Linet/ipaddr/format/util/b;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie;->remapIfAbsent(Linet/ipaddr/Address;Ljava/util/function/Supplier;Z)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->putIfAbsent(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    check-cast p1, Linet/ipaddr/Address;

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->replace(Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Linet/ipaddr/Address;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->getNode(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/util/AddressTrieMap;->replace(Linet/ipaddr/Address;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    iget-boolean v1, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    invoke-virtual {v1}, Linet/ipaddr/format/util/BinaryTreeNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Linet/ipaddr/format/util/AddressTrieMap;->subMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrieMap;->toSubMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/Address;

    check-cast p3, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/format/util/AddressTrieMap;->subMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    check-cast p2, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->subMap(Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public subMapFromKeysContainedBy(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContainedByToSubTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_1

    new-instance v0, Linet/ipaddr/format/util/AddressTrieMap;

    const/4 v1, 0x0

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0

    :cond_1
    new-instance v1, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    new-instance v0, Linet/ipaddr/format/util/AddressTrieMap;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0
.end method

.method public subMapFromKeysContaining(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->elementsContainingToTrie(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AssociativeAddressTrie;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Linet/ipaddr/format/util/AddressTrie;->bounds:Linet/ipaddr/format/util/AddressTrie$AddressBounds;

    if-nez v0, :cond_1

    new-instance v0, Linet/ipaddr/format/util/AddressTrieMap;

    const/4 v1, 0x0

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0

    :cond_1
    new-instance v1, Linet/ipaddr/format/util/AddressTrieSet$Range;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v1, v0, v2}, Linet/ipaddr/format/util/AddressTrieSet$Range;-><init>(Linet/ipaddr/format/util/AddressTrie$AddressBounds;Z)V

    new-instance v0, Linet/ipaddr/format/util/AddressTrieMap;

    iget-boolean v2, p0, Linet/ipaddr/format/util/AddressTrieMap;->isReverse:Z

    invoke-direct {v0, p1, v1, v2}, Linet/ipaddr/format/util/AddressTrieMap;-><init>(Linet/ipaddr/format/util/AssociativeAddressTrie;Linet/ipaddr/format/util/AddressTrieSet$Range;Z)V

    return-object v0
.end method

.method public tailMap(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/AddressTrieMap;->tailMap(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Linet/ipaddr/format/util/AddressTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Linet/ipaddr/format/util/AddressTrieMap;->toSubMap(Linet/ipaddr/Address;ZLinet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrieMap;->tailMap(Linet/ipaddr/Address;Z)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 4
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/AddressTrieMap;->tailMap(Linet/ipaddr/Address;)Linet/ipaddr/format/util/AddressTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public toTrieString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/AddressTrieMap;->trie:Linet/ipaddr/format/util/AssociativeAddressTrie;

    invoke-virtual {v0}, Linet/ipaddr/format/util/AddressTrie;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
