.class public Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;
.super Linet/ipaddr/IPAddressSection$IPStringOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    }
.end annotation


# instance fields
.field public final compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

.field public final ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;


# direct methods
.method public constructor <init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;ZLinet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 14

    move-object v13, p0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move/from16 v10, p13

    move/from16 v11, p14

    move/from16 v12, p15

    invoke-direct/range {v0 .. v12}, Linet/ipaddr/IPAddressSection$IPStringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p8

    iput-object v0, v13, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOption(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    :goto_0
    iput-object v0, v13, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static synthetic access$100(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->from(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    move-result-object p0

    return-object p0
.end method

.method public static from(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    instance-of v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    if-eqz v1, :cond_0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    return-object v0

    :cond_0
    new-instance v17, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    iget v2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    iget-boolean v3, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->expandSegments:Z

    iget-object v4, v0, Linet/ipaddr/IPAddressSection$IPStringOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iget-object v5, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iget-object v6, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    const/16 v11, 0x25

    iget-object v12, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    iget-object v13, v0, Linet/ipaddr/IPAddressSection$IPStringOptions;->addrSuffix:Ljava/lang/String;

    iget-boolean v14, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    iget-boolean v15, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    iget-boolean v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    move-object/from16 v1, v17

    move/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;ZLinet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v17
.end method

.method private from(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;
    .locals 6

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;-><init>()V

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->makeMixed()Z

    move-result v1

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    invoke-static {p1, v2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->access$200(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Z)[I

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iput v3, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->firstCompressedSegmentIndex:I

    add-int/2addr v3, v1

    iput v3, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    iget-object v1, v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->rangeSelection:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->compressHost()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->nextUncompressedIndex:I

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    const/16 v5, 0x10

    invoke-static {p1, v3, v5}, Linet/ipaddr/ipv6/IPv6AddressSection;->access$300(III)I

    move-result p1

    if-le v1, p1, :cond_0

    move v2, v4

    :cond_0
    iput-boolean v2, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;->hostCompressed:Z

    :cond_1
    iget-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->expandSegments:Z

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments(Z)V

    iget-object p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->setWildcardOption(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V

    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSeparator(Ljava/lang/Character;)V

    iget-object p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->addrSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->setAddressSuffix(Ljava/lang/String;)V

    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setAddressLabel(Ljava/lang/String;)V

    iget-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setReverse(Z)V

    iget-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSplitDigits(Z)V

    iget-char p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions;->zoneSeparator:C

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setZoneSeparator(C)V

    iget-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setUppercase(Z)V

    iget p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setRadix(I)V

    iget-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSegmentStrPrefix(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isCacheable()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeMixed()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;->ipv4Opts:Linet/ipaddr/IPAddressSection$IPStringOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
