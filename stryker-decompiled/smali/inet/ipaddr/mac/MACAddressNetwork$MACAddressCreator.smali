.class public Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
.super Linet/ipaddr/format/standard/AddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/mac/MACAddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MACAddressCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/standard/AddressCreator<",
        "Linet/ipaddr/mac/MACAddress;",
        "Linet/ipaddr/mac/MACAddressSection;",
        "Linet/ipaddr/mac/MACAddressSection;",
        "Linet/ipaddr/mac/MACAddressSegment;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

.field private final owner:Linet/ipaddr/mac/MACAddressNetwork;


# direct methods
.method public constructor <init>(Linet/ipaddr/mac/MACAddressNetwork;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressCreator;-><init>()V

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->owner:Linet/ipaddr/mac/MACAddressNetwork;

    new-instance p1, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    invoke-direct {p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;-><init>()V

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddressNetwork;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressCreator;-><init>()V

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->owner:Linet/ipaddr/mac/MACAddressNetwork;

    iput-object p2, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    return-void
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->clearCaches()V

    iget-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->clear()V

    return-void
.end method

.method public bridge synthetic createAddress(Linet/ipaddr/AddressSection;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/mac/MACAddress;

    invoke-direct {v0, p1}, Linet/ipaddr/mac/MACAddress;-><init>(Linet/ipaddr/mac/MACAddressSection;)V

    return-object v0
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/Address;
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    check-cast p4, Linet/ipaddr/mac/MACAddress;

    check-cast p5, Linet/ipaddr/mac/MACAddress;

    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/Address;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/Address;
    .locals 0

    .line 5
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/Address;
    .locals 0

    .line 6
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/Address;
    .locals 0

    .line 7
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    invoke-virtual {p1, p2}, Linet/ipaddr/mac/MACAddress;->cache(Linet/ipaddr/HostIdentifierString;)V

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    invoke-virtual {p1, p3}, Linet/ipaddr/mac/MACAddress;->cache(Linet/ipaddr/HostIdentifierString;)V

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddress;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/mac/MACAddress;
    .locals 6

    .line 11
    new-instance p2, Linet/ipaddr/mac/MACAddressSection;

    array-length v2, p1

    const/4 v3, 0x0

    array-length v0, p1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIIZZ)V

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddressInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;
    .locals 4

    .line 3
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    array-length v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {v0, v3, p1, v3, v1}, Linet/ipaddr/mac/MACAddressSection;-><init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V

    invoke-virtual {v0, p2}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;
    .locals 2

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_1

    const/16 v0, 0xff

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$200(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    new-instance v0, Linet/ipaddr/mac/MACAddressSegment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Linet/ipaddr/mac/MACAddressSegment;-><init>(II)V

    invoke-static {p1, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$202(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSegment;

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    new-instance v0, Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSegment;-><init>(II)V

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSection(JIZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 1
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-direct {v0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;-><init>(JIZ)V

    return-object v0
.end method

.method public createSection(JIZLjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-direct {v0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;-><init>(JIZ)V

    invoke-virtual {v0, p5}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public createSection(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 3
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-direct {v0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)V

    return-object v0
.end method

.method public createSection(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZLjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 4
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-direct {v0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)V

    invoke-virtual {v0, p5}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public createSection([BIIZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 9

    .line 5
    new-instance v8, Linet/ipaddr/mac/MACAddressSection;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIIIIZZ)V

    return-object v8
.end method

.method public createSection([BIIZLjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;
    .locals 9

    .line 6
    new-instance v8, Linet/ipaddr/mac/MACAddressSection;

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIIIIZZ)V

    invoke-virtual {v8, p5}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v8
.end method

.method public createSection([BIZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 7
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIZ)V

    return-object v0
.end method

.method public createSection([BIZLjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 8
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-direct {v0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIZ)V

    invoke-virtual {v0, p4}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public createSection([Linet/ipaddr/mac/MACAddressSegment;Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 9
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Linet/ipaddr/mac/MACAddressSection;-><init>([Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-object v0
.end method

.method public createSection([Linet/ipaddr/mac/MACAddressSegment;ZLjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 10
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Linet/ipaddr/mac/MACAddressSection;-><init>([Linet/ipaddr/mac/MACAddressSegment;IZ)V

    invoke-virtual {v0, p3}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 6

    .line 4
    new-instance p4, Linet/ipaddr/mac/MACAddressSection;

    const/4 v3, 0x0

    const/4 v0, 0x6

    if-le p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIIZZ)V

    invoke-virtual {p4, p3}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object p4
.end method

.method public createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 4

    .line 5
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    array-length v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {v0, v3, p1, v3, v1}, Linet/ipaddr/mac/MACAddressSection;-><init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-object v0
.end method

.method public createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;IZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 6
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;-><init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-object v0
.end method

.method public createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 7
    new-instance v0, Linet/ipaddr/mac/MACAddressSection;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, p2}, Linet/ipaddr/mac/MACAddressSection;-><init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-object v0
.end method

.method public bridge synthetic createSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegment(I)Linet/ipaddr/mac/MACAddressSegment;
    .locals 2

    .line 4
    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    invoke-static {v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$100(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    const/16 v1, 0x100

    new-array v1, v1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-static {v0, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$102(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;[Linet/ipaddr/mac/MACAddressSegment;)[Linet/ipaddr/mac/MACAddressSegment;

    new-instance v0, Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;-><init>(I)V

    aput-object v0, v1, p1

    goto :goto_0

    :cond_0
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    new-instance v1, Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {v1, p1}, Linet/ipaddr/mac/MACAddressSegment;-><init>(I)V

    aput-object v1, v0, p1

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;-><init>(I)V

    return-object v0
.end method

.method public createSegment(IILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 2

    .line 5
    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xff

    if-nez v0, :cond_2

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$200(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    new-instance p2, Linet/ipaddr/mac/MACAddressSegment;

    const/4 p3, 0x0

    invoke-direct {p2, p3, v1}, Linet/ipaddr/mac/MACAddressSegment;-><init>(II)V

    invoke-static {p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$202(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSegment;

    move-object p1, p2

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    rsub-int/lit8 p3, p3, 0x8

    const/4 v0, -0x1

    shl-int p3, v0, p3

    and-int/2addr p3, v1

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_5
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1
.end method

.method public createSegment(ILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 2

    .line 6
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$200(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    new-instance p2, Linet/ipaddr/mac/MACAddressSegment;

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-direct {p2, v0, v1}, Linet/ipaddr/mac/MACAddressSegment;-><init>(II)V

    invoke-static {p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->access$202(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSegment;

    move-object p1, p2

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x8

    const/4 v0, -0x1

    shl-int p2, v0, p2

    and-int v0, p1, p2

    not-int p2, p2

    or-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_3
    new-instance p1, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegmentArray(I)[Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    invoke-static {}, Linet/ipaddr/mac/MACAddressNetwork;->access$000()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, p1, [Linet/ipaddr/mac/MACAddressSegment;

    return-object p1
.end method

.method public bridge synthetic createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p7}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/mac/MACAddressSegment;
    .locals 8

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v7

    move-object v0, v7

    move-object v1, p4

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p11

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Linet/ipaddr/mac/MACAddressSegment;->setString(Ljava/lang/CharSequence;ZIIII)V

    return-object v7
.end method

.method public createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/mac/MACAddressSegment;
    .locals 6

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    move-object v0, p1

    move-object v1, p3

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSegment;->setString(Ljava/lang/CharSequence;ZIII)V

    return-object p1
.end method

.method public getMaxValuePerSegment()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->owner:Linet/ipaddr/mac/MACAddressNetwork;

    return-object v0
.end method
