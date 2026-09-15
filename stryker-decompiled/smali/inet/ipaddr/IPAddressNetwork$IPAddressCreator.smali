.class public abstract Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
.super Linet/ipaddr/format/standard/AddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IPAddressCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linet/ipaddr/IPAddress;",
        "R:",
        "Linet/ipaddr/IPAddressSection;",
        "E:",
        "Linet/ipaddr/IPAddressSection;",
        "S:",
        "Linet/ipaddr/IPAddressSegment;",
        "J:",
        "Ljava/net/InetAddress;",
        ">",
        "Linet/ipaddr/format/standard/AddressCreator<",
        "TT;TR;TE;TS;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private owner:Linet/ipaddr/IPAddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/IPAddressNetwork<",
            "TT;TR;TE;TS;TJ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressNetwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressNetwork<",
            "TT;TR;TE;TS;TJ;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressCreator;-><init>()V

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->owner:Linet/ipaddr/IPAddressNetwork;

    return-void
.end method

.method private createSequentialBlockSegments(Linet/ipaddr/IPAddressSegmentSeries;III)[Linet/ipaddr/IPAddressSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "III)[TS;"
        }
    .end annotation

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/IPAddressSegment;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v0, v1}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p3

    check-cast p3, Linet/ipaddr/IPAddressSegment;

    aput-object p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    array-length p3, v0

    if-ge p2, p3, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->getMaxValuePerSegment()I

    move-result p3

    invoke-virtual {p0, v1, p3, p1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    :cond_0
    aput-object p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    array-length p3, v0

    if-lt p2, p3, :cond_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createAddress(Linet/ipaddr/AddressSection;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/IPAddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TT;"
        }
    .end annotation
.end method

.method public abstract createAddress(Ljava/net/InetAddress;)Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)TT;"
        }
    .end annotation
.end method

.method public abstract createAddress(Ljava/net/InetAddress;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation
.end method

.method public createAddress([B)Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([BLjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress([BIILjava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress([BIILjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([BIIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress([BLjava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([BLjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TT;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddress([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSection([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract createAddressArray(I)[Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/IPAddressSection;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/IPAddressSection;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/Address;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/Address;
    .locals 0

    .line 4
    check-cast p1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/Address;
    .locals 0

    .line 5
    check-cast p1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/Address;
    .locals 0

    .line 6
    check-cast p1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal(Linet/ipaddr/IPAddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Linet/ipaddr/HostIdentifierString;",
            ")TT;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1, p2}, Linet/ipaddr/IPAddress;->cache(Linet/ipaddr/HostIdentifierString;)V

    return-object p1
.end method

.method public abstract createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation
.end method

.method public createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/HostIdentifierString;",
            ")TT;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1, p3}, Linet/ipaddr/IPAddress;->cache(Linet/ipaddr/HostIdentifierString;)V

    return-object p1
.end method

.method public createAddressInternal([BLjava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([BILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([BLjava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([BILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([BLjava/lang/Integer;Linet/ipaddr/HostName;)Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/HostName;",
            ")TT;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([BILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([BLjava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([BILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([BLjava/lang/Integer;Ljava/lang/CharSequence;Linet/ipaddr/HostName;)Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/HostName;",
            ")TT;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getAddressSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([BILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TT;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal(Linet/ipaddr/IPAddressSection;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            "Z)TT;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public abstract createEmbeddedSectionInternal(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSection;",
            "[TS;)TR;"
        }
    .end annotation
.end method

.method public abstract createFullSectionInternal(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            "Z)TR;"
        }
    .end annotation
.end method

.method public abstract createSection([BIIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract createSection([BIILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract createSection([BLjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract createSection([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TR;"
        }
    .end annotation
.end method

.method public abstract createSection([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract createSectionArray(I)[Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TR;"
        }
    .end annotation
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/IPAddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([BILjava/lang/Integer;)Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/Integer;",
            ")TR;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Linet/ipaddr/format/standard/AddressCreator;->createSectionInternal([BILjava/lang/Integer;Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method public abstract createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TS;)TR;"
        }
    .end annotation
.end method

.method public bridge synthetic createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p11}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p7}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/IPAddressSegment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "IIZZIII)TS;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    move-object v1, v0

    move-object v2, p4

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Linet/ipaddr/IPAddressSegment;->setStandardString(Ljava/lang/CharSequence;ZZIIIII)V

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p11

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Linet/ipaddr/IPAddressSegment;->setWildcardString(Ljava/lang/CharSequence;ZIIII)V

    return-object v0
.end method

.method public createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/IPAddressSegment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "IZII)TS;"
        }
    .end annotation

    .line 4
    invoke-interface {p0, p1, p2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSegment;

    move-object v0, p1

    move-object v1, p3

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/IPAddressSegment;->setStandardString(Ljava/lang/CharSequence;ZIII)V

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/IPAddressSegment;->setWildcardString(Ljava/lang/CharSequence;ZIII)V

    return-object p1
.end method

.method public createSequentialBlockAddress(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "III)TT;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockSegments(Linet/ipaddr/IPAddressSegmentSeries;III)[Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public createSequentialBlockSection(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "III)TR;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockSegments(Linet/ipaddr/IPAddressSegmentSeries;III)[Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAddressSegmentCount()I
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork<",
            "TT;TR;TE;TS;TJ;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->owner:Linet/ipaddr/IPAddressNetwork;

    return-object v0
.end method
