.class Linet/ipaddr/ipv4/IPv4AddressSection$EmbeddedIPv4AddressSection;
.super Linet/ipaddr/ipv4/IPv4AddressSection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedIPv4AddressSection"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final encompassingSection:Linet/ipaddr/IPAddressSection;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv4/IPv4AddressSegment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Linet/ipaddr/ipv4/IPv4AddressSection;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;Z)V

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressSection$EmbeddedIPv4AddressSection;->encompassingSection:Linet/ipaddr/IPAddressSection;

    return-void
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getDivision(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getHostSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkMask()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSection(II)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegments()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getStringCache()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->increment(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public isPrefixBlock()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection$EmbeddedIPv4AddressSection;->encompassingSection:Linet/ipaddr/IPAddressSection;

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isPrefixBlock()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBits(Z)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytes()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->reverseSegments()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spanWithPrefixBlocks()[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spanWithSequentialBlocks()[Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toMaxHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroHost(I)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toZeroNetwork()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0
.end method
