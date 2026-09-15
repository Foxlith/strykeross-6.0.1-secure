.class public Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
.super Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

.field private ipv4Options:Linet/ipaddr/IPAddressSection$IPStringOptions;

.field private makeMixed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(IC)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public setCompressOptions(Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    return-object p0
.end method

.method public bridge synthetic setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExpandedSegments(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public setMakeMixed(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->makeMixed:Z

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->ipv4Options:Linet/ipaddr/IPAddressSection$IPStringOptions;

    return-object p0
.end method

.method public setMakeMixed(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 2
    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->makeMixed:Z

    return-object p0
.end method

.method public bridge synthetic setRadix(I)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setRadix(I)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setRadix(I)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRadix(I)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setRadix(I)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setReverse(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setReverse(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setReverse(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setReverse(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setReverse(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setReverse(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSeparator(Ljava/lang/Character;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setSplitDigits(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSplitDigits(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSplitDigits(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setSplitDigits(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSplitDigits(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSplitDigits(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setUppercase(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setUppercase(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUppercase(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setUppercase(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUppercase(Z)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setUppercase(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setZoneSeparator(C)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->setZoneSeparator(C)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setZoneSeparator(C)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setZoneSeparator(C)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    move-result-object v0

    return-object v0
.end method

.method public toOptions()Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;
    .locals 18

    .line 3
    move-object/from16 v0, p0

    new-instance v17, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;

    iget v2, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    iget-boolean v3, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->expandSegments:Z

    iget-object v4, v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iget-object v5, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iget-object v6, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    iget-boolean v7, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->makeMixed:Z

    iget-object v8, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->ipv4Options:Linet/ipaddr/IPAddressSection$IPStringOptions;

    iget-object v9, v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions$Builder;->compressOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;

    iget-object v10, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    iget-char v11, v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->zoneSeparator:C

    iget-object v12, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    iget-object v13, v0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->addrSuffix:Ljava/lang/String;

    iget-boolean v14, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->reverse:Z

    iget-boolean v15, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->splitDigits:Z

    iget-boolean v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->uppercase:Z

    move/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;ZLinet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v17
.end method
