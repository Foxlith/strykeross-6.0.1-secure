.class abstract Linet/ipaddr/format/SpliteratorBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressComponentRangeSpliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/format/AddressComponentRange;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field protected inForEach:Z

.field protected iteratedCountL:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x5155

    return v0
.end method

.method public forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;J)V"
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spliterator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Linet/ipaddr/format/util/AddressComponentRangeSpliterator;->getAddressItem()Linet/ipaddr/format/AddressComponentRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/Iterator;Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iget-wide v0, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Linet/ipaddr/format/SpliteratorBase;->iteratedCountL:J
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
