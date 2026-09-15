.class public interface abstract Linet/ipaddr/IPAddressSegmentSeries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/IPAddressDivisionSeries;
.implements Linet/ipaddr/AddressSegmentSeries;


# direct methods
.method public static getPrefixLenComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation

    sget-object v0, Linet/ipaddr/IPAddressSection;->mergeListComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSegmentSeries;->adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixBySegment(Z)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract adjustPrefixBySegment(ZZ)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSegmentSeries;->adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract adjustPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract applyPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract assignMinPrefixForBlock()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract blockIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blockSpliterator(I)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blockStream(I)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract coverWithPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract getHostMask()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract getHostSection()Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getHostSection(I)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getLower()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getLower()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLower()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract getLowerNonZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNetwork()Linet/ipaddr/IPAddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;"
        }
    .end annotation
.end method

.method public abstract getNetworkMask()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract getNetworkSection()Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getNetworkSection(I)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getNetworkSection(IZ)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getNonZeroHostCount()Ljava/math/BigInteger;
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getSection()Linet/ipaddr/IPAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->getSection(I)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSegmentSeries;->getSection(II)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSection()Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getSection(I)Linet/ipaddr/IPAddressSection;
.end method

.method public abstract getSection(II)Linet/ipaddr/IPAddressSection;
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSegment(I)Linet/ipaddr/IPAddressSegment;
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getSegments()[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSegments()[Linet/ipaddr/IPAddressSegment;
.end method

.method public abstract getSequentialBlockCount()Ljava/math/BigInteger;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getUpper()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->getUpper()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpper()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract includesMaxHost()Z
.end method

.method public abstract includesMaxHost(I)Z
.end method

.method public abstract includesZeroHost()Z
.end method

.method public abstract includesZeroHost(I)Z
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSegmentSeries;->increment(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract increment(J)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSegmentSeries;->incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract incrementBoundary(J)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract nonZeroHostIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixBlockStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prefixStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract removePrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/IPAddressSegmentSeries;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytes()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytesPerSegment()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseSegments()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract segmentsIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+[",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentsNonZeroHostIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+[",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            "+[",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract segmentsStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+[",
            "Linet/ipaddr/IPAddressSegment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sequentialBlockIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sequentialBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sequentialBlockStream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/IPAddressSegmentSeries;->setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Linet/ipaddr/IPAddressSegmentSeries;->setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1
.end method

.method public abstract setPrefixLength(I)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract setPrefixLength(IZ)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract spanWithPrefixBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract spanWithSequentialBlocks()[Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/IPAddressSegmentSeries;",
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
            "Linet/ipaddr/IPAddressSegmentSeries;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toBinaryString()Ljava/lang/String;
.end method

.method public abstract toCanonicalWildcardString()Ljava/lang/String;
.end method

.method public abstract toCompressedWildcardString()Ljava/lang/String;
.end method

.method public abstract toFullString()Ljava/lang/String;
.end method

.method public abstract toMaxHost()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract toMaxHost(I)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;)Ljava/lang/String;
.end method

.method public abstract toNormalizedWildcardString()Ljava/lang/String;
.end method

.method public abstract toOctalString(Z)Ljava/lang/String;
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract toPrefixBlock()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract toPrefixBlock(I)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract toPrefixLengthString()Ljava/lang/String;
.end method

.method public abstract toReverseDNSLookupString()Ljava/lang/String;
.end method

.method public abstract toSQLWildcardString()Ljava/lang/String;
.end method

.method public abstract toSegmentedBinaryString()Ljava/lang/String;
.end method

.method public abstract toStringCollection(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/format/util/IPAddressPartStringCollection;
.end method

.method public abstract toSubnetString()Ljava/lang/String;
.end method

.method public abstract toZeroHost()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract toZeroHost(I)Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public abstract toZeroNetwork()Linet/ipaddr/IPAddressSegmentSeries;
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object v0

    return-object v0
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/IPAddressSegmentSeries;
.end method
