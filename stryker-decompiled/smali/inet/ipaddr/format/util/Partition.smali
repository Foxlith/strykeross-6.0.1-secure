.class public Linet/ipaddr/format/util/Partition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blocks:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final count:Ljava/math/BigInteger;

.field public final original:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final single:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Linet/ipaddr/format/util/Partition;->count:Ljava/math/BigInteger;

    iput-object p1, p0, Linet/ipaddr/format/util/Partition;->single:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/Partition;->blocks:Ljava/util/Iterator;

    iput-object p1, p0, Linet/ipaddr/format/util/Partition;->original:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Linet/ipaddr/format/util/Partition;->count:Ljava/math/BigInteger;

    iput-object p2, p0, Linet/ipaddr/format/util/Partition;->single:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Linet/ipaddr/format/util/Partition;->blocks:Ljava/util/Iterator;

    iput-object p1, p0, Linet/ipaddr/format/util/Partition;->original:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Iterator<",
            "+TE;>;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    iput-object p3, p0, Linet/ipaddr/format/util/Partition;->count:Ljava/math/BigInteger;

    const/4 p3, 0x0

    iput-object p3, p0, Linet/ipaddr/format/util/Partition;->single:Ljava/lang/Object;

    iput-object p2, p0, Linet/ipaddr/format/util/Partition;->blocks:Ljava/util/Iterator;

    iput-object p1, p0, Linet/ipaddr/format/util/Partition;->original:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Linet/ipaddr/format/util/Partition;->count:Ljava/math/BigInteger;

    const/4 p3, 0x0

    iput-object p3, p0, Linet/ipaddr/format/util/Partition;->single:Ljava/lang/Object;

    iput-object p2, p0, Linet/ipaddr/format/util/Partition;->blocks:Ljava/util/Iterator;

    iput-object p1, p0, Linet/ipaddr/format/util/Partition;->original:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/util/TreeMap;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/format/util/Partition;->lambda$applyForEach$0(Ljava/util/function/Function;Ljava/util/TreeMap;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/util/Partition;->lambda$predicateForAny$1(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static checkBlockOrAddress(Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Linet/ipaddr/format/util/AbstractTree;->checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$applyForEach$0(Ljava/util/function/Function;Ljava/util/TreeMap;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$predicateForAny$1(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static partitionWithSingleBlockSize(Linet/ipaddr/AddressSegmentSeries;)Linet/ipaddr/format/util/Partition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Linet/ipaddr/AddressSegmentSeries;",
            ">(TE;)",
            "Linet/ipaddr/format/util/Partition<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/Partition;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Linet/ipaddr/format/util/Partition;

    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Linet/ipaddr/format/util/Partition;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Linet/ipaddr/IPAddressSegmentSeries;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-interface {v0}, Linet/ipaddr/IPAddressSegmentSeries;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Linet/ipaddr/format/util/Partition;

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Ljava/math/BigInteger;)V

    return-object v2

    :cond_3
    invoke-interface {p0}, Linet/ipaddr/format/AddressItem;->getMinPrefixLengthForBlock()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Linet/ipaddr/AddressSegmentSeries;->setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Linet/ipaddr/format/util/Partition;

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, p0, v1, v0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Ljava/math/BigInteger;)V

    return-object v2

    :cond_4
    invoke-interface {p0}, Linet/ipaddr/AddressSegmentSeries;->withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/format/util/Partition;

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static partitionWithSpanningBlocks(Linet/ipaddr/IPAddress;)Linet/ipaddr/format/util/Partition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/IPAddress;",
            ">(TE;)",
            "Linet/ipaddr/format/util/Partition<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/Address;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/util/Partition;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Linet/ipaddr/format/util/Partition;

    invoke-virtual {p0}, Linet/ipaddr/IPAddress;->withoutPrefixLength()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/Address;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Linet/ipaddr/format/util/Partition;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-interface {p0}, Linet/ipaddr/format/IPAddressRange;->spanWithPrefixBlocks()[Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Linet/ipaddr/format/util/Partition;

    array-length v0, v0

    invoke-direct {v2, p0, v1, v0}, Linet/ipaddr/format/util/Partition;-><init>(Ljava/lang/Object;Ljava/util/Iterator;I)V

    return-object v2
.end method


# virtual methods
.method public applyForEach(Ljava/util/function/Function;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TE;+TR;>;)",
            "Ljava/util/Map<",
            "TE;TR;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Linet/ipaddr/format/util/n;

    invoke-direct {v1, p1, v0}, Linet/ipaddr/format/util/n;-><init>(Ljava/util/function/Function;Ljava/util/TreeMap;)V

    invoke-virtual {p0, v1}, Linet/ipaddr/format/util/Partition;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/Partition;->blocks:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/Partition;->single:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public predicateForAny(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/Partition;->predicateForAny(Ljava/util/function/Predicate;Z)Z

    move-result p1

    return p1
.end method

.method public predicateForAny(Ljava/util/function/Predicate;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;Z)Z"
        }
    .end annotation

    .line 2
    new-instance v0, Linet/ipaddr/format/util/g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linet/ipaddr/format/util/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, p2}, Linet/ipaddr/format/util/Partition;->predicateForEach(Ljava/util/function/Predicate;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public predicateForEach(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/util/Partition;->predicateForEach(Ljava/util/function/Predicate;Z)Z

    move-result p1

    return p1
.end method

.method public predicateForEach(Ljava/util/function/Predicate;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;Z)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/util/Partition;->blocks:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object p2, p0, Linet/ipaddr/format/util/Partition;->single:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :cond_2
    return v1
.end method
