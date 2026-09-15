.class public Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;
.super Linet/ipaddr/format/standard/IPAddressDivisionGrouping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6v4MixedAddressSection"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

.field private final ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

.field private string:Ljava/lang/String;


# direct methods
.method private constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->createSegments(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/format/standard/IPAddressDivision;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    new-instance v0, Linet/ipaddr/InconsistentPrefixException;

    invoke-virtual {p2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Linet/ipaddr/InconsistentPrefixException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;Ljava/lang/Integer;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    goto :goto_0

    :goto_1
    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    return-void
.end method

.method public synthetic constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;)V

    return-void
.end method

.method public static synthetic access$500(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object p0
.end method

.method public static synthetic access$600(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object p0
.end method

.method private static createSegments(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/format/standard/IPAddressDivision;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    add-int/2addr v2, v3

    const/16 v3, 0x8

    if-gt v2, v3, :cond_0

    add-int v2, v0, v1

    new-array v2, v2, [Linet/ipaddr/IPAddressSegment;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v2, v3}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    invoke-virtual {p1, v3, v1, v2, v0}, Linet/ipaddr/IPAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    return-object v2

    :cond_0
    new-instance v0, Linet/ipaddr/AddressValueException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/AddressValueException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    iget-object v3, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v1, v3}, Linet/ipaddr/ipv6/IPv6AddressSection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getBitCount()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitCount()I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getBitCount()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getByteCount()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getByteCount()I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getByteCount()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isPrefixBlock()Z
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isPrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection;->isFullRange()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->isPrefixBlock()Z

    move-result v0

    return v0
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    iget-object v2, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    iget-object p1, p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv4Section:Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->ipv6Section:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->access$100(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object v1

    iget-object v0, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    invoke-direct {v2, v1, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;Linet/ipaddr/IPAddressSection$IPStringOptions;)V

    invoke-virtual {v2, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->string:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;->string:Ljava/lang/String;

    return-object v0
.end method
