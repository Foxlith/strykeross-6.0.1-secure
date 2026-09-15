.class public Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection$IPStringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected addrSuffix:Ljava/lang/String;

.field protected wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

.field protected zoneSeparator:C


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;-><init>(IC)V

    return-void
.end method

.method public constructor <init>(IC)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;-><init>(IC)V

    const-string p1, ""

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->addrSuffix:Ljava/lang/String;

    sget-object p1, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->NETWORK_ONLY:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    const/16 p1, 0x25

    iput-char p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->zoneSeparator:C

    return-void
.end method


# virtual methods
.method public setAddressLabel(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setAddressLabel(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setAddressLabel(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setAddressLabel(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAddressSuffix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->addrSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setExpandedSegments(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRadix(I)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setRadix(I)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setReverse(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setReverse(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setReverse(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setReverse(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSeparator(Ljava/lang/Character;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSplitDigits(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setSplitDigits(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setSplitDigits(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setSplitDigits(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUppercase(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setUppercase(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setUppercase(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setUppercase(Z)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWildcardOption(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    return-object p0
.end method

.method public setWildcardOptions(Linet/ipaddr/IPAddressSection$WildcardOptions;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 1

    iget-object v0, p1, Linet/ipaddr/IPAddressSection$WildcardOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcardOption(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    iget-object p1, p1, Linet/ipaddr/IPAddressSection$WildcardOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    return-object p1
.end method

.method public bridge synthetic setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setZoneSeparator(C)Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    .locals 0

    iput-char p1, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->zoneSeparator:C

    return-object p0
.end method

.method public toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;
    .locals 14

    .line 1
    new-instance v13, Linet/ipaddr/IPAddressSection$IPStringOptions;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    iget-boolean v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->expandSegments:Z

    iget-object v3, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iget-object v4, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iget-object v5, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    iget-object v6, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    iget-char v7, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->zoneSeparator:C

    iget-object v8, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    iget-object v9, p0, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->addrSuffix:Ljava/lang/String;

    iget-boolean v10, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->reverse:Z

    iget-boolean v11, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->splitDigits:Z

    iget-boolean v12, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->uppercase:Z

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Linet/ipaddr/IPAddressSection$IPStringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v13
.end method

.method public bridge synthetic toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;->toOptions()Linet/ipaddr/IPAddressSection$IPStringOptions;

    move-result-object v0

    return-object v0
.end method
