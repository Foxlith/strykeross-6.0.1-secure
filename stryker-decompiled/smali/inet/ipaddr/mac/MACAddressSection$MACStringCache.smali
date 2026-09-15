.class public Linet/ipaddr/mac/MACAddressSection$MACStringCache;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/mac/MACAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MACStringCache"
.end annotation


# static fields
.field static final canonicalParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

.field static final compressedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

.field static final dottedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

.field static final hexParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

.field static final hexPrefixedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

.field static final normalizedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

.field static final spaceDelimitedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;


# instance fields
.field public compressedString:Ljava/lang/String;

.field public dottedString:Ljava/lang/String;

.field public normalizedString:Ljava/lang/String;

.field public spaceDelimitedString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    const-string v4, "0x"

    invoke-virtual {v0, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setAddressLabel(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexPrefixedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    const/16 v4, 0x3a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->normalizedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    const/16 v5, 0x2d

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    new-instance v5, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    sget-object v6, Linet/ipaddr/mac/MACAddress;->DASHED_SEGMENT_RANGE_SEPARATOR_STR:Ljava/lang/String;

    sget-object v7, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->canonicalParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    invoke-virtual {v0, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->compressedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->dottedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->spaceDelimitedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;-><init>()V

    return-void
.end method
