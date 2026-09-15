.class Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;
.super Linet/ipaddr/ipv6/IPv6AddressSection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedIPv6AddressSection"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final encompassingSection:Linet/ipaddr/IPAddressSection;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZ)V

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;->encompassingSection:Linet/ipaddr/IPAddressSection;

    return-void
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->applyPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignMinPrefixForBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->coverWithPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 7
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getDivision(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getHostSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLowerNonZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkMask()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetworkSection(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSection(II)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/IPAddressSegment;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegments()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSegmentsInternal()[Linet/ipaddr/IPAddressSegment;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegmentsInternal()[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStringCache()Linet/ipaddr/IPAddressSection$IPStringCache;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getStringCache()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->increment(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->incrementBoundary(J)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public isPrefixBlock()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$EmbeddedIPv6AddressSection;->encompassingSection:Linet/ipaddr/IPAddressSection;

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isPrefixBlock()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->removePrefixLength(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBits(Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytes()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseBytesPerSegment()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->reverseSegments()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZZ)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->setPrefixLength(IZ)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spanWithPrefixBlocks()[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spanWithSequentialBlocks()[Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toMaxHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 5
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroHost(I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toZeroNetwork()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSection;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .locals 1

    .line 4
    invoke-super {p0}, Linet/ipaddr/ipv6/IPv6AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method
