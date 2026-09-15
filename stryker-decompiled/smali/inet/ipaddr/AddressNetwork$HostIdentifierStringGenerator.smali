.class public abstract Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HostIdentifierStringGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/HostIdentifierString;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->backingMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public added(Linet/ipaddr/HostIdentifierString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public contains(Linet/ipaddr/HostIdentifierString;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract create(Ljava/lang/String;)Linet/ipaddr/HostIdentifierString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostIdentifierString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/Address$AddressValueProvider;",
            ")TT;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;)Linet/ipaddr/HostIdentifierString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->backingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->create(Ljava/lang/String;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/HostIdentifierString;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->create(Ljava/lang/String;)Linet/ipaddr/HostIdentifierString;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/HostIdentifierString;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->create(Ljava/lang/String;)Linet/ipaddr/HostIdentifierString;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->backingMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/HostIdentifierString;

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->added(Linet/ipaddr/HostIdentifierString;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public abstract get([B)Linet/ipaddr/HostIdentifierString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public getBackingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->backingMap:Ljava/util/Map;

    return-object v0
.end method
