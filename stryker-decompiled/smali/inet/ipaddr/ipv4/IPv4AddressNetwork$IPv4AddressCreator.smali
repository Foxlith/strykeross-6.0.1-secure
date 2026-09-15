.class public Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
.super Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4AddressCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressNetwork$IPAddressCreator<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        "Linet/ipaddr/ipv4/IPv4AddressSegment;",
        "Ljava/net/Inet4Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

.field useSegmentCache:Z


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressNetwork;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;-><init>(Linet/ipaddr/IPAddressNetwork;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    new-instance p1, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-direct {p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;-><init>()V

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/ipv4/IPv4AddressNetwork;Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;-><init>(Linet/ipaddr/IPAddressNetwork;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    iput-object p2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->clearCaches()V

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->clear()V

    return-void
.end method

.method public bridge synthetic createAddress(Linet/ipaddr/AddressSection;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Ljava/net/InetAddress;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    check-cast p1, Ljava/net/Inet4Address;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Ljava/net/InetAddress;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    check-cast p1, Ljava/net/Inet4Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Ljava/net/Inet4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 5
    new-instance v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Linet/ipaddr/ipv4/IPv4AddressSection;)V

    return-object v0
.end method

.method public createAddress(Ljava/net/Inet4Address;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 6
    new-instance v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Ljava/net/Inet4Address;)V

    return-object v0
.end method

.method public createAddress(Ljava/net/Inet4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    .line 7
    new-instance v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4Address;-><init>(Ljava/net/Inet4Address;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createAddressArray(I)[Linet/ipaddr/IPAddress;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressArray(I)[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressArray(I)[Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->access$900()[Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p4, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p5, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/Address;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddress(Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1, p4, p5}, Linet/ipaddr/ipv4/IPv4Address;->cache(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;)V

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    return-object p1
.end method

.method public bridge synthetic createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    check-cast p2, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$EmbeddedIPv4AddressSection;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection$EmbeddedIPv4AddressSection;-><init>(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv4/IPv4AddressSegment;)V

    return-object v0
.end method

.method public bridge synthetic createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createPrefixedSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 3
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;ZLjava/lang/Integer;Z)V

    return-object v0
.end method

.method public bridge synthetic createSection([BIIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([BIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([BIILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([BLjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([BLjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSection([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSection([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSection([BIIILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    .line 6
    new-instance v6, Linet/ipaddr/ipv4/IPv4AddressSection;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BIIILjava/lang/Integer;)V

    return-object v6
.end method

.method public createSection([BIILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 9

    .line 7
    new-instance v8, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BIIILjava/lang/Integer;ZZ)V

    return-object v8
.end method

.method public createSection([BLjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 8
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BLjava/lang/Integer;)V

    return-object v0
.end method

.method public createSection([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 9
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;)V

    return-object v0
.end method

.method public createSection([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 10
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createSectionArray(I)[Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionArray(I)[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionArray(I)[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->access$800()[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal(I)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 5
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(I)V

    return-object v0
.end method

.method public createSectionInternal(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    .line 6
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>(ILjava/lang/Integer;)V

    return-object v0
.end method

.method public createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 7

    .line 7
    new-instance v6, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([BILjava/lang/Integer;ZZ)V

    return-object v6
.end method

.method public createSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 2

    .line 8
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Z)V

    return-object v0
.end method

.method public createSectionInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;IZ)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    .line 9
    new-instance p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-direct {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;)V

    return-object p2
.end method

.method public bridge synthetic createSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 2

    .line 4
    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-static {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$100(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    const/16 v1, 0x100

    new-array v1, v1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$102(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[Linet/ipaddr/ipv4/IPv4AddressSegment;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(I)V

    aput-object v0, v1, p1

    goto :goto_0

    :cond_0
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(I)V

    aput-object v1, v0, p1

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(I)V

    return-object v0
.end method

.method public createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 5

    .line 5
    const/4 v0, 0x0

    const/16 v1, 0xff

    if-nez p3, :cond_2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    if-eqz v2, :cond_c

    if-nez p1, :cond_c

    if-ne p2, v1, :cond_c

    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$500(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    new-instance p2, Linet/ipaddr/ipv4/IPv4AddressSegment;

    const/4 p3, 0x0

    invoke-direct {p2, v0, v1, p3}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(IILjava/lang/Integer;)V

    invoke-static {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$502(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-object p1, p2

    :cond_1
    return-object p1

    :cond_2
    if-ne p1, p2, :cond_3

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :cond_3
    iget-boolean v2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    if-eqz v2, :cond_c

    if-ltz p1, :cond_c

    if-gt p1, v1, :cond_c

    if-ltz p2, :cond_c

    if-gt p2, v1, :cond_c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->access$600(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->access$300()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_5
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    const/16 v3, 0x9

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v2

    and-int/2addr p1, v2

    and-int v4, p2, v2

    if-ne v4, p1, :cond_6

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :cond_6
    if-nez p1, :cond_c

    if-lt p2, v2, :cond_c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-static {p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$700(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    if-nez p2, :cond_7

    iget-object p2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    new-array v2, v3, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {p2, v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$702(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[Linet/ipaddr/ipv4/IPv4AddressSegment;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    new-instance p2, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {p2, v0, v1, p3}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(IILjava/lang/Integer;)V

    aput-object p2, v2, p1

    goto :goto_0

    :cond_7
    aget-object v2, p2, p1

    if-nez v2, :cond_8

    new-instance v2, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v2, v0, v1, p3}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(IILjava/lang/Integer;)V

    aput-object v2, p2, p1

    :cond_8
    move-object p2, v2

    :goto_0
    return-object p2

    :cond_9
    if-nez p1, :cond_c

    if-ne p2, v1, :cond_c

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-static {p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$700(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p2

    if-nez p2, :cond_a

    iget-object p2, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    new-array v2, v3, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {p2, v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$702(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[Linet/ipaddr/ipv4/IPv4AddressSegment;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    new-instance p2, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {p2, v0, v1, p3}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(IILjava/lang/Integer;)V

    aput-object p2, v2, p1

    goto :goto_1

    :cond_a
    aget-object v2, p2, p1

    if-nez v2, :cond_b

    new-instance v2, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v2, v0, v1, p3}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(IILjava/lang/Integer;)V

    aput-object v2, p2, p1

    :cond_b
    move-object p2, v2

    :goto_1
    return-object p2

    :cond_c
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(IILjava/lang/Integer;)V

    return-object v0
.end method

.method public createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 8

    .line 6
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    if-eqz v0, :cond_9

    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-gt p1, v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$200(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    new-instance p2, Linet/ipaddr/ipv4/IPv4AddressSegment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(ILjava/lang/Integer;)V

    invoke-static {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$202(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-object p1, p2

    :cond_1
    return-object p1

    :cond_2
    invoke-static {}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->access$300()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_3

    and-int/2addr p1, v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    ushr-int v0, p1, v0

    move v7, v0

    move v0, p1

    move p1, v7

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    iget-object v3, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    invoke-static {v3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$400(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    const/16 v4, 0x100

    const/4 v5, 0x1

    if-nez v3, :cond_5

    iget-object v3, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->cache:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;

    const/16 v6, 0x9

    new-array v6, v6, [[Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v3, v6}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->access$402(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[[Linet/ipaddr/ipv4/IPv4AddressSegment;)[[Linet/ipaddr/ipv4/IPv4AddressSegment;

    if-eqz v2, :cond_4

    shl-int v4, v5, v1

    :cond_4
    new-array v2, v4, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v2, v6, v1

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v1, v0, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(ILjava/lang/Integer;)V

    aput-object v1, v2, p1

    goto :goto_1

    :cond_5
    aget-object v6, v3, v1

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    shl-int v4, v5, v1

    :cond_6
    new-array v2, v4, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v2, v3, v1

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v1, v0, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(ILjava/lang/Integer;)V

    aput-object v1, v2, p1

    goto :goto_1

    :cond_7
    aget-object v1, v6, p1

    if-nez v1, :cond_8

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v1, v0, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(ILjava/lang/Integer;)V

    aput-object v1, v6, p1

    :cond_8
    :goto_1
    return-object v1

    :cond_9
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;-><init>(ILjava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createSegmentArray(I)[Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->access$000()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public getAddressSegmentCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMaxValuePerSegment()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;

    return-object v0
.end method

.method public setSegmentCaching(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->useSegmentCache:Z

    return-void
.end method
