.class public abstract Linet/ipaddr/Address;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressSegmentSeries;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/Address$SegmentValueProvider;,
        Linet/ipaddr/Address$AddressValueProvider;
    }
.end annotation


# static fields
.field public static final ADDRESS_HIGH_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

.field public static final ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

.field public static final ALTERNATIVE_RANGE_SEPARATOR:C = '\u00bb'

.field public static final ALTERNATIVE_RANGE_SEPARATOR_STR:Ljava/lang/String;

.field public static final ALTERNATIVE_SEGMENT_WILDCARD_STR:Ljava/lang/String; = "\u00bf"

.field public static final DEFAULT_ADDRESS_COMPARATOR:Linet/ipaddr/AddressComparator;

.field public static final HEX_PREFIX:Ljava/lang/String; = "0x"

.field public static final OCTAL_PREFIX:Ljava/lang/String; = "0"

.field public static final RANGE_SEPARATOR:C = '-'

.field public static final RANGE_SEPARATOR_STR:Ljava/lang/String;

.field public static final SEGMENT_SQL_SINGLE_WILDCARD:C = '_'

.field public static final SEGMENT_SQL_SINGLE_WILDCARD_STR:Ljava/lang/String;

.field public static final SEGMENT_SQL_WILDCARD:C = '%'

.field public static final SEGMENT_SQL_WILDCARD_STR:Ljava/lang/String;

.field public static final SEGMENT_WILDCARD:C = '*'

.field public static final SEGMENT_WILDCARD_STR:Ljava/lang/String;

.field private static ipv4Network:Linet/ipaddr/ipv4/IPv4AddressNetwork; = null

.field private static ipv6Network:Linet/ipaddr/ipv6/IPv6AddressNetwork; = null

.field private static macNetwork:Linet/ipaddr/mac/MACAddressNetwork; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final addressSection:Linet/ipaddr/AddressSection;

.field protected fromString:Linet/ipaddr/HostIdentifierString;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    const/16 v0, 0xbb

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/Address;->ALTERNATIVE_RANGE_SEPARATOR_STR:Ljava/lang/String;

    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/Address;->SEGMENT_SQL_WILDCARD_STR:Ljava/lang/String;

    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linet/ipaddr/Address;->SEGMENT_SQL_SINGLE_WILDCARD_STR:Ljava/lang/String;

    new-instance v0, Linet/ipaddr/AddressComparator$CountComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Linet/ipaddr/AddressComparator$CountComparator;-><init>(Z)V

    sput-object v0, Linet/ipaddr/Address;->DEFAULT_ADDRESS_COMPARATOR:Linet/ipaddr/AddressComparator;

    new-instance v0, Linet/ipaddr/AddressComparator$ValueComparator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressComparator$ValueComparator;-><init>(ZZ)V

    sput-object v0, Linet/ipaddr/Address;->ADDRESS_LOW_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    new-instance v0, Linet/ipaddr/AddressComparator$ValueComparator;

    invoke-direct {v0, v1, v1}, Linet/ipaddr/AddressComparator$ValueComparator;-><init>(ZZ)V

    sput-object v0, Linet/ipaddr/Address;->ADDRESS_HIGH_VALUE_COMPARATOR:Linet/ipaddr/AddressComparator;

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/AddressSection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/Address;->addressSection:Linet/ipaddr/AddressSection;

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {v0, p1}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/Address;",
            "Linet/ipaddr/AddressSection;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/AddressSection;

    iput-object p1, p0, Linet/ipaddr/Address;->addressSection:Linet/ipaddr/AddressSection;

    invoke-interface {p0}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v0

    invoke-interface {p1}, Linet/ipaddr/AddressComponent;->getNetwork()Linet/ipaddr/AddressNetwork;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/NetworkMismatchException;

    invoke-direct {v0, p1}, Linet/ipaddr/NetworkMismatchException;-><init>(Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method

.method public static defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 2

    sget-object v0, Linet/ipaddr/Address;->ipv4Network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    if-nez v0, :cond_1

    const-class v0, Linet/ipaddr/Address;

    monitor-enter v0

    :try_start_0
    sget-object v1, Linet/ipaddr/Address;->ipv4Network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    if-nez v1, :cond_0

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressNetwork;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;-><init>()V

    sput-object v1, Linet/ipaddr/Address;->ipv4Network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Linet/ipaddr/Address;->ipv4Network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    return-object v0
.end method

.method public static defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 2

    sget-object v0, Linet/ipaddr/Address;->ipv6Network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    if-nez v0, :cond_1

    const-class v0, Linet/ipaddr/Address;

    monitor-enter v0

    :try_start_0
    sget-object v1, Linet/ipaddr/Address;->ipv6Network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    if-nez v1, :cond_0

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressNetwork;

    invoke-direct {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;-><init>()V

    sput-object v1, Linet/ipaddr/Address;->ipv6Network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Linet/ipaddr/Address;->ipv6Network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    return-object v0
.end method

.method public static defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 2

    sget-object v0, Linet/ipaddr/Address;->macNetwork:Linet/ipaddr/mac/MACAddressNetwork;

    if-nez v0, :cond_1

    const-class v0, Linet/ipaddr/Address;

    monitor-enter v0

    :try_start_0
    sget-object v1, Linet/ipaddr/Address;->macNetwork:Linet/ipaddr/mac/MACAddressNetwork;

    if-nez v1, :cond_0

    new-instance v1, Linet/ipaddr/mac/MACAddressNetwork;

    invoke-direct {v1}, Linet/ipaddr/mac/MACAddressNetwork;-><init>()V

    sput-object v1, Linet/ipaddr/Address;->macNetwork:Linet/ipaddr/mac/MACAddressNetwork;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Linet/ipaddr/Address;->macNetwork:Linet/ipaddr/mac/MACAddressNetwork;

    return-object v0
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/HostIdentifierException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract adjustPrefixBySegment(Z)Linet/ipaddr/Address;
.end method

.method public abstract adjustPrefixBySegment(ZZ)Linet/ipaddr/Address;
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->adjustPrefixBySegment(Z)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/Address;->adjustPrefixBySegment(ZZ)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract adjustPrefixLength(I)Linet/ipaddr/Address;
.end method

.method public abstract adjustPrefixLength(IZ)Linet/ipaddr/Address;
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->adjustPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/Address;->adjustPrefixLength(IZ)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract applyPrefixLength(I)Linet/ipaddr/Address;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->applyPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public contains(Linet/ipaddr/Address;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object p1

    invoke-interface {v0, p1}, Linet/ipaddr/AddressSection;->contains(Linet/ipaddr/AddressSection;)Z

    move-result p1

    return p1
.end method

.method public containsPrefixBlock(I)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressItem;->containsPrefixBlock(I)Z

    move-result p1

    return p1
.end method

.method public containsSinglePrefixBlock(I)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressItem;->containsSinglePrefixBlock(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/Address;

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/Address;

    iget-object v1, p1, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    invoke-virtual {p0, v1}, Linet/ipaddr/Address;->isFromSameString(Linet/ipaddr/HostIdentifierString;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->isSameAddress(Linet/ipaddr/Address;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getBitCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    return v0
.end method

.method public getBlockCount(I)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressDivisionSeries;->getBlockCount(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getByteCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getByteCount()I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes([B)[B
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressItem;->getBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes([BI)[B
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Linet/ipaddr/format/AddressItem;->getBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getCount()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDivisionCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    return v0
.end method

.method public getDivisionStrings()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getDivisionStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIterable()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Linet/ipaddr/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLower()Linet/ipaddr/Address;
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getLower()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->getLower()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getMinPrefixLengthForBlock()I

    move-result v0

    return v0
.end method

.method public getPrefixCount()Ljava/math/BigInteger;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSection()Linet/ipaddr/AddressSection;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/Address;->addressSection:Linet/ipaddr/AddressSection;

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentCount()I

    move-result v0

    return v0
.end method

.method public getSegmentStrings()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->getSegmentStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegments(II[Linet/ipaddr/AddressSegment;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Linet/ipaddr/AddressSegmentSeries;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    return-void
.end method

.method public getSegments([Linet/ipaddr/AddressSegment;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/AddressSegmentSeries;->getSegments([Linet/ipaddr/AddressSegment;)V

    return-void
.end method

.method public abstract getUpper()Linet/ipaddr/Address;
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getUpper()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->getUpper()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBytes()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getUpperBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getUpperBytes([B)[B
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressItem;->getUpperBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperBytes([BI)[B
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Linet/ipaddr/format/AddressItem;->getUpperBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public includesMax()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->includesMax()Z

    move-result v0

    return v0
.end method

.method public includesZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->includesZero()Z

    move-result v0

    return v0
.end method

.method public abstract increment(J)Linet/ipaddr/Address;
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/Address;->increment(J)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract incrementBoundary(J)Linet/ipaddr/Address;
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/Address;->incrementBoundary(J)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract isFromSameString(Linet/ipaddr/HostIdentifierString;)Z
.end method

.method public isFullRange()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v0

    return v0
.end method

.method public abstract isLocal()Z
.end method

.method public isMax()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->isMax()Z

    move-result v0

    return v0
.end method

.method public isMore(Linet/ipaddr/format/AddressDivisionSeries;)I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/format/AddressDivisionSeries;->isMore(Linet/ipaddr/format/AddressDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public abstract isMulticast()Z
.end method

.method public isMultiple()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v0

    return v0
.end method

.method public isPrefixBlock()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixBlock()Z

    move-result v0

    return v0
.end method

.method public isPrefixed()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v0

    return v0
.end method

.method public isSameAddress(Linet/ipaddr/Address;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSequential()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0

    return v0
.end method

.method public isSinglePrefixBlock()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->isSinglePrefixBlock()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressItem;->isZero()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/Address;",
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
            "Linet/ipaddr/Address;",
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
            "Linet/ipaddr/Address;",
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
            "Linet/ipaddr/Address;",
            ">;"
        }
    .end annotation
.end method

.method public prefixEquals(Linet/ipaddr/Address;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object p1

    invoke-interface {v0, p1}, Linet/ipaddr/AddressSection;->prefixEquals(Linet/ipaddr/AddressSection;)Z

    move-result p1

    return p1
.end method

.method public abstract prefixIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/Address;",
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
            "Linet/ipaddr/Address;",
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
            "Linet/ipaddr/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePrefixLength()Linet/ipaddr/Address;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePrefixLength(Z)Linet/ipaddr/Address;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->removePrefixLength()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->removePrefixLength(Z)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBits(Z)Linet/ipaddr/Address;
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->reverseBits(Z)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->reverseBits(Z)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public abstract reverseBytes()Linet/ipaddr/Address;
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->reverseBytes()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/Address;->reverseBytes()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseBytesPerSegment()Linet/ipaddr/Address;
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->reverseBytesPerSegment()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public abstract reverseSegments()Linet/ipaddr/Address;
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->reverseSegments()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public abstract setPrefixLength(I)Linet/ipaddr/Address;
.end method

.method public abstract setPrefixLength(IZ)Linet/ipaddr/Address;
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/Address;->setPrefixLength(I)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/Address;->setPrefixLength(IZ)Linet/ipaddr/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "+",
            "Linet/ipaddr/Address;",
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
            "Linet/ipaddr/Address;",
            ">;"
        }
    .end annotation
.end method

.method public toAddressString()Linet/ipaddr/HostIdentifierString;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/Address;->fromString:Linet/ipaddr/HostIdentifierString;

    return-object v0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCompressedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressSegmentSeries;->toCompressedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHexString(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0, p1}, Linet/ipaddr/AddressComponent;->toHexString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getSection()Linet/ipaddr/AddressSection;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/AddressComponent;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toPrefixBlock()Linet/ipaddr/Address;
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->toPrefixBlock()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract withoutPrefixLength()Linet/ipaddr/Address;
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/Address;->withoutPrefixLength()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method
