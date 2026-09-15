.class public Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;
.super Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    const/16 v1, 0x2e

    invoke-direct {p0, v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;-><init>(IC)V

    return-void
.end method

.method public constructor <init>(IC)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(IC)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;->toOptions()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;->toOptions()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;

    move-result-object v0

    return-object v0
.end method

.method public toOptions()Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;
    .locals 13

    .line 3
    new-instance v12, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    iget-boolean v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->expandSegments:Z

    iget-object v3, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iget-object v4, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iget-object v5, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    iget-object v6, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    iget-object v7, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    iget-object v8, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->addrSuffix:Ljava/lang/String;

    iget-boolean v9, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->reverse:Z

    iget-boolean v10, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->splitDigits:Z

    iget-boolean v11, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->uppercase:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v12
.end method
