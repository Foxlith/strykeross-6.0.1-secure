.class public Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressDivisionWriter;
.implements Linet/ipaddr/format/util/AddressSegmentParams;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/AddressDivisionGroupingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressStringParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/AddressStringDivisionSeries;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressDivisionWriter;",
        "Linet/ipaddr/format/util/AddressSegmentParams;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;


# instance fields
.field private addressLabel:Ljava/lang/String;

.field protected expandSegments:Z

.field private radix:I

.field private reverse:Z

.field private segmentStrPrefix:Ljava/lang/String;

.field protected separator:Ljava/lang/Character;

.field private splitDigits:Z

.field private uppercase:Z

.field private wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

.field private zoneSeparator:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-direct {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>()V

    sput-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Character;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;-><init>(ILjava/lang/Character;ZC)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Character;ZC)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    const-string v0, ""

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->segmentStrPrefix:Ljava/lang/String;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->addressLabel:Ljava/lang/String;

    iput p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->radix:I

    iput-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->separator:Ljava/lang/Character;

    iput-boolean p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->uppercase:Z

    iput-char p4, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->zoneSeparator:C

    return-void
.end method

.method public static checkLengths(ILjava/lang/StringBuilder;)V
    .locals 0

    return-void
.end method

.method public static toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;",
            ")",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
            "Linet/ipaddr/format/string/AddressStringDivisionSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;)Linet/ipaddr/format/util/AddressDivisionWriter;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    iget-boolean v3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    invoke-direct {v0, v1, v2, v3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;-><init>(ILjava/lang/Character;Z)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->expandSegments:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments(Z)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSegmentStrPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setAddressLabel(Ljava/lang/String;)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setReverse(Z)V

    iget-boolean v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    invoke-virtual {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->setSplitDigits(Z)V

    invoke-static {p0, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;Linet/ipaddr/format/util/AddressDivisionWriter;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "TT;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0
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

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendZone(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendDivision(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivision;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p2, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSingleDivision(Linet/ipaddr/format/string/AddressStringDivision;Ljava/lang/StringBuilder;)I

    return-object p1
.end method

.method public appendLabel(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method public appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuilder;",
            "TT;)I"
        }
    .end annotation

    invoke-interface {p3, p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;

    move-result-object p3

    invoke-interface {p3, p1, p0, p2}, Linet/ipaddr/format/string/AddressStringDivision;->getStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public appendSegments(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/StringBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "TT;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    invoke-interface {p2}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->isReverse()Z

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSeparator()Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0, v4, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)I

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1
.end method

.method public appendSingleDivision(Linet/ipaddr/format/string/AddressStringDivision;Ljava/lang/StringBuilder;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabelLength()I

    move-result p2

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Linet/ipaddr/format/string/AddressStringDivision;->getStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendLabel(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, p0, p2}, Linet/ipaddr/format/string/AddressStringDivision;->getStandardString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I

    return v0
.end method

.method public appendZone(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-char v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->zoneSeparator:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p1
.end method

.method public clone()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->clone()Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object v0

    return-object v0
.end method

.method public expandSegments(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments:Z

    return-void
.end method

.method public getAddressLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->addressLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLabelLength()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDivisionStringLength(Linet/ipaddr/format/string/AddressStringDivision;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSingleDivision(Linet/ipaddr/format/string/AddressStringDivision;Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public getLeadingZeros(I)I
    .locals 0

    iget-boolean p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->expandSegments:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRadix()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->radix:I

    return v0
.end method

.method public getSegmentStrPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->segmentStrPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentsStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->appendSegment(ILjava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSeparator()Ljava/lang/Character;

    move-result-object p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int v1, v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public getSeparator()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->separator:Ljava/lang/Character;

    return-object v0
.end method

.method public getSplitDigitSeparator()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->separator:Ljava/lang/Character;

    return-object v0
.end method

.method public getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getAddressLabelLength()I

    move-result v0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getSegmentsStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;)I

    move-result p1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getZoneLength(Ljava/lang/CharSequence;)I

    move-result p2

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public getWildcards()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    return-object v0
.end method

.method public getZoneLength(Ljava/lang/CharSequence;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReverse()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->reverse:Z

    return v0
.end method

.method public isReverseSplitDigits()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->reverse:Z

    return v0
.end method

.method public isSplitDigits()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->splitDigits:Z

    return v0
.end method

.method public isUppercase()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->uppercase:Z

    return v0
.end method

.method public preferWildcards()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAddressLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->addressLabel:Ljava/lang/String;

    return-void
.end method

.method public setRadix(I)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->radix:I

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->reverse:Z

    return-void
.end method

.method public setSegmentStrPrefix(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->segmentStrPrefix:Ljava/lang/String;

    return-void
.end method

.method public setSeparator(Ljava/lang/Character;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->separator:Ljava/lang/Character;

    return-void
.end method

.method public setSplitDigits(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->splitDigits:Z

    return-void
.end method

.method public setUppercase(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->uppercase:Z

    return-void
.end method

.method public setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    return-void
.end method

.method public setZoneSeparator(C)V
    .locals 0

    iput-char p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->zoneSeparator:C

    return-void
.end method

.method public toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->getStringLength(Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v1, p1, p2}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->append(Ljava/lang/StringBuilder;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->checkLengths(ILjava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
