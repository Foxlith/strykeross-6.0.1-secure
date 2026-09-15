.class public Linet/ipaddr/IPAddressSection$IPStringCache;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPStringCache"
.end annotation


# static fields
.field public static final binaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field public static final canonicalSegmentParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field public static final hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field public static final hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field public static final octalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field public static final octalPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;


# instance fields
.field public binaryString:Ljava/lang/String;

.field public fullString:Ljava/lang/String;

.field public normalizedWildcardString:Ljava/lang/String;

.field public octalString:Ljava/lang/String;

.field public octalStringPrefixed:Ljava/lang/String;

.field public reverseDNSString:Ljava/lang/String;

.field public segmentedBinaryString:Ljava/lang/String;

.field public sqlWildcardString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/IPAddressSection$WildcardOptions;

    sget-object v1, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->ALL:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-direct {v0, v1}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setAddressLabel(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/IPAddressSection$IPStringCache;->hexPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setAddressLabel(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v1

    sput-object v1, Linet/ipaddr/IPAddressSection$IPStringCache;->octalPrefixedParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(I)V

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->binaryParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    new-instance v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(IC)V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/IPAddressSection$IPStringCache;->canonicalSegmentParams:Linet/ipaddr/IPAddressSection$IPStringOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;-><init>()V

    return-void
.end method
