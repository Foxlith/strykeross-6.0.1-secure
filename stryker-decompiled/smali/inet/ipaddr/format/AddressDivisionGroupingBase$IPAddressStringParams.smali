.class public Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
.super Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/IPAddressStringWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/AddressDivisionGroupingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPAddressStringParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        ">",
        "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
        "TT;>;",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_WILDCARD_OPTION:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

.field protected static final EXTRA_SPACE:I = 0x10


# instance fields
.field private addressSuffix:Ljava/lang/String;

.field private expandSegment:[I

.field private wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->NETWORK_ONLY:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    sput-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->DEFAULT_WILDCARD_OPTION:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Character;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;-><init>(ILjava/lang/Character;ZC)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Character;ZC)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;-><init>(ILjava/lang/Character;ZC)V

    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->DEFAULT_WILDCARD_OPTION:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    const-string p1, ""

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->addressSuffix:Ljava/lang/String;

    return-void
.end method

.method public static getPrefixIndicatorStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 1

    invoke-interface {p0}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Linet/ipaddr/format/AddressDivisionBase;->toUnsignedStringLengthFast(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    check-cast p2, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendLabel(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendZone(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendSuffix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isReverse()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendPrefixIndicator(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    :cond_0
    return-object p1
.end method

.method public appendPrefixIndicator(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V
    .locals 1

    invoke-interface {p2}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public bridge synthetic appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 0

    .line 1
    check-cast p3, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuilder;",
            "TT;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p3, p1}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;

    move-result-object v0

    invoke-interface {p3}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->prefixedSubnetsAreExplicit()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Linet/ipaddr/format/string/IPAddressStringDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Linet/ipaddr/format/string/IPAddressStringDivision;->getBitCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->isPrefixBlock()Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isSplitDigits()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Linet/ipaddr/format/string/IPAddressStringDivision;->isSinglePrefixBlock()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {v0, p1, p0, p2}, Linet/ipaddr/format/string/AddressStringDivision;->getLowerStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1

    :cond_2
    invoke-interface {v0, p1, p0, p2}, Linet/ipaddr/format/string/IPAddressStringDivision;->getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-interface {v0, p1, p0, p2}, Linet/ipaddr/format/string/AddressStringDivision;->getStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public appendSuffix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getAddressSuffix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic clone()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    iget-object v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;

    move-result-object v0

    return-object v0
.end method

.method public expandSegment(III)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    if-nez v0, :cond_0

    new-array p3, p3, [I

    iput-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    :cond_0
    iget-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    aput p2, p3, p1

    return-void
.end method

.method public getAddressSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->addressSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressSuffixLength()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getAddressSuffix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandedSegmentLength(I)I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLeadingZeros(I)I
    .locals 2

    iget-boolean v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->expandSegment:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-le v1, p1, :cond_1

    aget p1, v0, p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    return p1
.end method

.method public getStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSegmentsStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isReverse()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->preferWildcards()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getPrefixIndicatorStringLength(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->getAddressSuffixLength()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabelLength()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getTrailingSegmentSeparator()C
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->separator:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public getTrailingSeparatorCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public preferWildcards()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    sget-object v1, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->ALL:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddressSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->addressSuffix:Ljava/lang/String;

    return-void
.end method

.method public setWildcardOption(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    return-void
.end method

.method public bridge synthetic toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
