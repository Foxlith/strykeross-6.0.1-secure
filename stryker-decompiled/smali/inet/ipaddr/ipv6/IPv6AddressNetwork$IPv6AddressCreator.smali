.class public Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
.super Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6AddressCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
        "Linet/ipaddr/ipv6/IPv6Address;",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSegment;",
        "Ljava/net/Inet6Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

.field useSegmentCache:Z


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressNetwork;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;-><init>(Linet/ipaddr/IPAddressNetwork;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    new-instance p1, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-direct {p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;-><init>()V

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;-><init>(Linet/ipaddr/IPAddressNetwork;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    return-void
.end method

.method private getCacheZoneObj(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    .locals 3

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->checkIfScope(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$800(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$800(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    new-instance v1, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-direct {v1, v0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(I)V

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$800(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v2

    aput-object v1, v2, v0

    goto :goto_0

    :cond_0
    new-instance v1, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-direct {v1, v0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(I)V

    :cond_1
    :goto_0
    iput-object p1, v1, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$900(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$1000(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v1, :cond_4

    new-instance v0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$900(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$1000(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    if-nez v2, :cond_3

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$1000(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v0

    :cond_4
    :goto_2
    return-object v1
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->clearCaches()V

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->clear()V

    return-void
.end method

.method public bridge synthetic createAddress(Linet/ipaddr/AddressSection;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Ljava/net/InetAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Ljava/net/InetAddress;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Ljava/net/Inet6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    new-instance v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;)V

    return-object v0
.end method

.method public createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 6
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)V

    return-object v0
.end method

.method public createAddress(Ljava/net/Inet6Address;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 7
    new-instance v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/net/Inet6Address;)V

    return-object v0
.end method

.method public createAddress(Ljava/net/Inet6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 8
    new-instance v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6Address;-><init>(Ljava/net/Inet6Address;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public createAddress([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 9
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressArray(I)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressArray(I)[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressArray(I)[Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->access$700()[Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast p4, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p5, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/Address;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    .line 5
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getCacheZoneObj(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1, p4, p5}, Linet/ipaddr/ipv6/IPv6Address;->cache(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;)V

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    return-object p1
.end method

.method public bridge synthetic createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    check-cast p2, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;-><init>(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    return-object v0
.end method

.method public createEmbeddedSectionInternal(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 3
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;-><init>(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    return-object v0
.end method

.method public bridge synthetic createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p2, v1, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createPrefixedSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 3
    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZLjava/lang/Integer;Z)V

    return-object v6
.end method

.method public bridge synthetic createSection([BIIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([BIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([BIILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([BLjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([BLjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSection(Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 6
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/mac/MACAddress;)V

    return-object v0
.end method

.method public createSection(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 7
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>(Linet/ipaddr/mac/MACAddressSection;)V

    return-object v0
.end method

.method public createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 9

    .line 8
    new-instance v8, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-object v8
.end method

.method public createSection([BIILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 9

    .line 9
    new-instance v8, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-object v8
.end method

.method public createSection([BLjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 10
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BLjava/lang/Integer;)V

    return-object v0
.end method

.method public createSection([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 11
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;)V

    return-object v0
.end method

.method public createSection([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 12
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createSectionArray(I)[Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionArray(I)[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionArray(I)[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->access$600()[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSection;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSection;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 5
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSection;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 6
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 7
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 8
    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([BILjava/lang/Integer;ZZ)V

    return-object v6
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 9
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    return-object v0
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 10
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    return-object v0
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    .line 11
    new-instance p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    return-object p3
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 12
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    iput-object p2, v0, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 13
    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZLjava/lang/Integer;Z)V

    iput-object p2, v6, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v6
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 14
    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSection;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZLjava/lang/Integer;Z)V

    iput-object p2, v6, Linet/ipaddr/ipv6/IPv6AddressSection;->embeddedIPv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v6
.end method

.method public bridge synthetic createSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 5

    .line 4
    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    const v0, 0xffff

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$000(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x8

    shl-int/lit8 v2, v1, 0x8

    sub-int v2, p1, v2

    const/16 v3, 0x100

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    const/16 v4, 0x1ff

    new-array v4, v4, [[Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {v0, v4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$002(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;[[Linet/ipaddr/ipv6/IPv6AddressSegment;)[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    new-array v0, v3, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v4, v1

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(I)V

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    aget-object v4, v0, v1

    if-nez v4, :cond_1

    new-array v3, v3, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v3, v0, v1

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(I)V

    aput-object v1, v3, v2

    goto :goto_0

    :cond_1
    aget-object v1, v4, v2

    if-nez v1, :cond_2

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(I)V

    aput-object v1, v4, v2

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(I)V

    return-object v0
.end method

.method public createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 4

    .line 5
    const/4 v0, 0x0

    const v1, 0xffff

    if-nez p3, :cond_2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    if-eqz v2, :cond_a

    if-nez p1, :cond_a

    if-ne p2, v1, :cond_a

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$400(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    new-instance p2, Linet/ipaddr/ipv6/IPv6AddressSegment;

    const/4 p3, 0x0

    invoke-direct {p2, v0, v1, p3}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(IILjava/lang/Integer;)V

    invoke-static {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$402(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object p1, p2

    :cond_1
    return-object p1

    :cond_2
    if-ne p1, p2, :cond_3

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :cond_3
    iget-boolean v2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    if-eqz v2, :cond_a

    if-ltz p1, :cond_a

    if-gt p1, v1, :cond_a

    if-ltz p2, :cond_a

    if-gt p2, v1, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->access$200()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v2

    and-int/2addr p1, v2

    and-int/2addr v2, p2

    if-ne v2, p1, :cond_6

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddressNetwork;->getSegmentHostMask(I)I

    move-result v2

    or-int/2addr p2, v2

    :cond_7
    if-nez p1, :cond_a

    if-ne p2, v1, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$500(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p2

    if-nez p2, :cond_8

    iget-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    const/16 v2, 0x11

    new-array v2, v2, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {p2, v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$502(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;[Linet/ipaddr/ipv6/IPv6AddressSegment;)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    new-instance p2, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {p2, v0, v1, p3}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(IILjava/lang/Integer;)V

    aput-object p2, v2, p1

    goto :goto_0

    :cond_8
    aget-object v2, p2, p1

    if-nez v2, :cond_9

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v2, v0, v1, p3}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(IILjava/lang/Integer;)V

    aput-object v2, p2, p1

    :cond_9
    move-object p2, v2

    :goto_0
    return-object p2

    :cond_a
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(IILjava/lang/Integer;)V

    return-object v0
.end method

.method public createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 11

    .line 6
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    if-eqz v0, :cond_d

    if-ltz p1, :cond_d

    const v0, 0xffff

    if-gt p1, v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$100(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    new-instance p2, Linet/ipaddr/ipv6/IPv6AddressSegment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(ILjava/lang/Integer;)V

    invoke-static {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$102(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object p1, p2

    :cond_1
    return-object p1

    :cond_2
    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->access$200()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v2

    and-int/2addr p1, v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x10

    ushr-int v2, p1, v2

    move v10, v2

    move v2, p1

    move p1, v10

    goto :goto_0

    :cond_3
    move v2, p1

    :goto_0
    iget-object v3, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-static {v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$300(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    ushr-int/lit8 v4, p1, 0x8

    shl-int/lit8 v5, v4, 0x8

    sub-int/2addr p1, v5

    const/4 v5, 0x0

    if-nez v3, :cond_4

    iget-object v3, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->cache:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    const/16 v6, 0x11

    new-array v6, v6, [[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {v3, v6}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->access$302(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;[[[Linet/ipaddr/ipv6/IPv6AddressSegment;)[[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object v7, v5

    move-object v3, v6

    :goto_1
    move-object v6, v7

    goto :goto_2

    :cond_4
    aget-object v6, v3, v0

    if-eqz v6, :cond_6

    aget-object v7, v6, v4

    if-eqz v7, :cond_5

    aget-object v5, v7, p1

    :cond_5
    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    goto :goto_2

    :cond_6
    move-object v7, v5

    move-object v5, v6

    goto :goto_1

    :goto_2
    const/high16 v8, 0x10000

    const/4 v9, 0x1

    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shl-int v5, v9, v5

    goto :goto_3

    :cond_7
    move v5, v8

    :goto_3
    add-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x8

    new-array v5, v5, [[Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v5, v3, v0

    :cond_8
    if-nez v7, :cond_b

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int v8, v9, v0

    :cond_9
    ushr-int/lit8 v0, v8, 0x8

    if-ne v4, v0, :cond_a

    shl-int/lit8 v0, v0, 0x8

    sub-int/2addr v8, v0

    new-array v0, v8, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_a
    const/16 v0, 0x100

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    goto :goto_4

    :goto_5
    aput-object v7, v5, v4

    :cond_b
    if-nez v6, :cond_c

    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v6, v2, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(ILjava/lang/Integer;)V

    aput-object v6, v7, p1

    :cond_c
    return-object v6

    :cond_d
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;-><init>(ILjava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createSegmentArray(I)[Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    sget-object p1, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public getAddressSegmentCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getMaxValuePerSegment()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;

    return-object v0
.end method

.method public setSegmentCaching(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->useSegmentCache:Z

    return-void
.end method
