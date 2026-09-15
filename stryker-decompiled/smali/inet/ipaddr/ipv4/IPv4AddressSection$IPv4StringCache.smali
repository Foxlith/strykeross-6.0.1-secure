.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;
.super Linet/ipaddr/IPAddressSection$IPStringCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4StringCache"
.end annotation


# static fields
.field static final canonicalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final fullParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final inetAtonHexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final inetAtonOctalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final normalizedWildcardParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final reverseDNSParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final segmentedBinaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field static final sqlWildcardParams:Linet/ipaddr/IPAddressSection$IPStringOptions;


# instance fields
.field public hexString:Ljava/lang/String;

.field public octalString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Linet/ipaddr/IPAddressSection$WildcardOptions;

    sget-object v1, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->ALL:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V

    new-instance v2, Linet/ipaddr/IPAddressSection$WildcardOptions;

    new-instance v3, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v4, Linet/ipaddr/Address;->SEGMENT_SQL_WILDCARD_STR:Ljava/lang/String;

    sget-object v5, Linet/ipaddr/Address;->SEGMENT_SQL_SINGLE_WILDCARD_STR:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    new-instance v1, Linet/ipaddr/IPAddressSection$WildcardOptions;

    sget-object v3, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->NETWORK_ONLY:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    new-instance v4, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v5, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-direct {v4, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    new-instance v3, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v3}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->fullParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->normalizedWildcardParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->sqlWildcardParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    sget-object v2, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->getRadix()I

    move-result v3

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setRadix(I)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->inetAtonOctalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    sget-object v2, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->getRadix()I

    move-result v3

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setRadix(I)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v2}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->getSegmentStrPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->inetAtonHexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;->toOptions()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->canonicalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;

    invoke-direct {v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>()V

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setReverse(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    const-string v1, ".in-addr.arpa"

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->reverseDNSParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    const-string v1, "0b"

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringCache;->segmentedBinaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/IPAddressSection$IPStringCache;-><init>()V

    return-void
.end method
