.class public interface abstract Linet/ipaddr/format/AddressComponentRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressItem;
.implements Linet/ipaddr/format/AddressItemRange;


# direct methods
.method public static synthetic b(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/format/AddressComponentRange;->lambda$stream$0(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/format/AddressComponentRange;->lambda$stream$1(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$stream$0(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$stream$1(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    return-object p0
.end method

.method public static stream(Ljava/util/function/Function;Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/AddressComponent;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/stream/Stream<",
            "+TT;>;>;",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/android/material/color/utilities/o;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs stream(Ljava/util/function/Function;[Linet/ipaddr/AddressComponent;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/AddressComponent;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/stream/Stream<",
            "+TT;>;>;[TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/google/android/material/color/utilities/o;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/AddressComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLower()Linet/ipaddr/AddressComponent;
.end method

.method public abstract getUpper()Linet/ipaddr/AddressComponent;
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/AddressComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/format/AddressComponentRange;",
            "+",
            "Linet/ipaddr/AddressComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/AddressComponent;",
            ">;"
        }
    .end annotation
.end method
