.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;
.super Linet/ipaddr/IPAddressSection$IPStringCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringCache"
.end annotation


# static fields
.field static final base85Params:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final canonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final compressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final fullParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final mixedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final networkPrefixLengthParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final normalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final reverseDNSParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final segmentedBinaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final sqlWildcardParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final uncParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final wildcardCanonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final wildcardCompressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

.field static final wildcardNormalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;


# instance fields
.field public base85String:Ljava/lang/String;

.field public canonicalWildcardString:Ljava/lang/String;

.field public compressedString:Ljava/lang/String;

.field public compressedWildcardString:Ljava/lang/String;

.field public mixedString:Ljava/lang/String;

.field public networkPrefixLengthString:Ljava/lang/String;

.field public normalizedString:Ljava/lang/String;

.field public uncString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->ZEROS_OR_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    sget-object v4, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->MIXED_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-direct {v3, v2, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    new-instance v4, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    sget-object v6, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->HOST_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-direct {v1, v2, v6}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    sget-object v7, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->ZEROS:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-direct {v6, v2, v7}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    new-instance v8, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    invoke-direct {v8, v5, v7}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V

    new-instance v5, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v5}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v5, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setMakeMixed(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->mixedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    new-instance v5, Linet/ipaddr/IPAddressSection$WildcardOptions;

    sget-object v7, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->NETWORK_ONLY:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    new-instance v9, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v10, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-direct {v9, v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7, v9}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    invoke-virtual {v3, v5}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->fullParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->canonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setZoneSeparator(C)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    const-string v4, ".ipv6-literal.net"

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    new-instance v4, Linet/ipaddr/IPAddressSection$WildcardOptions;

    new-instance v5, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v9, Linet/ipaddr/ipv6/IPv6Address;->UNC_RANGE_SEPARATOR_STR:Ljava/lang/String;

    sget-object v10, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v5, v9, v10, v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v7, v5}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->uncParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->compressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->normalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v0, Linet/ipaddr/IPAddressSection$WildcardOptions;

    sget-object v3, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->ALL:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-direct {v0, v3}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V

    new-instance v4, Linet/ipaddr/IPAddressSection$WildcardOptions;

    new-instance v5, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v7, Linet/ipaddr/Address;->SEGMENT_SQL_WILDCARD_STR:Ljava/lang/String;

    sget-object v9, Linet/ipaddr/Address;->SEGMENT_SQL_SINGLE_WILDCARD_STR:Ljava/lang/String;

    invoke-direct {v5, v7, v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v3, v5}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardCanonicalParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardNormalizedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v3

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->sqlWildcardParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v3, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->wildcardCompressedParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->networkPrefixLengthParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setReverse(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    const-string v1, ".ip6.arpa"

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSplitDigits(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->reverseDNSParams:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v1, 0x55

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    new-instance v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v3, Linet/ipaddr/Address;->ALTERNATIVE_RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-direct {v1, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setZoneSeparator(C)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->base85Params:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    const-string v1, "0b"

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCache;->segmentedBinaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/IPAddressSection$IPStringCache;-><init>()V

    return-void
.end method
