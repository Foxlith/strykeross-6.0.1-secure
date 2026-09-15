.class abstract Linet/ipaddr/format/AddressItemSpliteratorBase;
.super Linet/ipaddr/format/SpliteratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/format/AddressComponentRange;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Linet/ipaddr/format/SpliteratorBase<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field private static final INT_MAX:Ljava/math/BigInteger;


# instance fields
.field protected isBig:Z

.field protected iteratedCountB:Ljava/math/BigInteger;

.field protected iteratedCountI:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/AddressItemSpliteratorBase;->INT_MAX:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/format/SpliteratorBase;-><init>()V

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;Ljava/math/BigInteger;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    :cond_0
    sget-object v0, Linet/ipaddr/format/AddressItemSpliteratorBase;->INT_MAX:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v0, :cond_2

    :try_start_0
    iget-wide v5, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v7, v2

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iput-wide v3, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    iget-object v6, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    sget-object v7, Linet/ipaddr/format/AddressItemSpliteratorBase;->INT_MAX:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    move v0, v1

    :cond_3
    :try_start_2
    invoke-interface {p2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    iget-wide p2, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    cmp-long v0, p2, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    iput-wide v3, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    :cond_4
    throw p1

    :catch_0
    :cond_5
    iget-wide p1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_6

    iget-object p3, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    iput-wide v3, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountI:J

    :cond_6
    return-void
.end method

.method public tryAdvance(Ljava/util/Iterator;Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->isBig:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressItemSpliteratorBase;->iteratedCountB:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Linet/ipaddr/format/SpliteratorBase;->tryAdvance(Ljava/util/Iterator;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
