.class Linet/ipaddr/format/validate/IPAddressParseData;
.super Linet/ipaddr/format/validate/AddressParseData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected hasIPv4LeadingZeros:Z

.field private hasPrefixSeparator:Z

.field protected has_inet_aton_value:Z

.field private ipVersion:Linet/ipaddr/IPAddress$IPVersion;

.field private isBase85:Z

.field private isBase85Zoned:Z

.field protected isBinary:Z

.field private isZoned:Z

.field private is_inet_aton_joined:Z

.field mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

.field private qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

.field private qualifierIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/AddressParseData;-><init>(Ljava/lang/CharSequence;)V

    sget-object p1, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    const/4 p1, -0x1

    iput p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifierIndex:I

    return-void
.end method

.method private printQualifier(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifierIndex()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public clearQualifier()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifierIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned:Z

    iput-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator:Z

    iput-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85Zoned:Z

    sget-object v0, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    iput-object v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-void
.end method

.method public getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;
    .locals 0

    return-object p0
.end method

.method public getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->ipVersion:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-object v0
.end method

.method public getQualifierIndex()I
    .locals 1

    iget v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifierIndex:I

    return v0
.end method

.method public hasBinaryDigits()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBinary:Z

    return v0
.end method

.method public hasIPv4LeadingZeros()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasIPv4LeadingZeros:Z

    return v0
.end method

.method public hasPrefixSeparator()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator:Z

    return v0
.end method

.method public has_inet_aton_value()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->has_inet_aton_value:Z

    return v0
.end method

.method public isBase85Zoned()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85Zoned:Z

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompressed(I)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed(I[I)Z

    move-result p1

    return p1
.end method

.method public isCompressed(I[I)Z
    .locals 2

    .line 3
    const/16 v0, 0xf

    invoke-static {p1, v0, p2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isProvidingBase85IPv6()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85:Z

    return v0
.end method

.method public isProvidingIPv4()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProvidingIPv6()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProvidingMixedIPv6()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoned()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned:Z

    return v0
.end method

.method public is_inet_aton_joined()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/validate/IPAddressParseData;->is_inet_aton_joined:Z

    return v0
.end method

.method public setBase85(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85:Z

    return-void
.end method

.method public setBase85Zoned(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85Zoned:Z

    return-void
.end method

.method public setHasBinaryDigits(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBinary:Z

    return-void
.end method

.method public setHasIPv4LeadingZeros(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasIPv4LeadingZeros:Z

    return-void
.end method

.method public setHasPrefixSeparator(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator:Z

    return-void
.end method

.method public setMixedParsedAddress(Linet/ipaddr/format/validate/ParsedIPAddress;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    return-void
.end method

.method public setQualifier(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifier:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-void
.end method

.method public setQualifierIndex(I)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->qualifierIndex:I

    return-void
.end method

.method public setVersion(Linet/ipaddr/IPAddress$IPVersion;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->ipVersion:Linet/ipaddr/IPAddress$IPVersion;

    return-void
.end method

.method public setZoned(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned:Z

    return-void
.end method

.method public set_has_inet_aton_value(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->has_inet_aton_value:Z

    return-void
.end method

.method public set_inet_aton_joined(Z)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->is_inet_aton_joined:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "ip version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingIPv6()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingMixedIPv6()Z

    move-result v1

    const-string v3, ", with prefix length "

    const-string v4, ", with zone "

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->printQualifier(Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->printQualifier(Ljava/lang/StringBuilder;)V

    :cond_1
    const-string v1, ", with IPv4 embedded address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingBase85IPv6()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " base 85"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85Zoned()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->printQualifier(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->printQualifier(Ljava/lang/StringBuilder;)V

    :cond_5
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingIPv4()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ", with prefix length  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->printQualifier(Ljava/lang/StringBuilder;)V

    :cond_7
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->is_inet_aton_joined()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ", with joined segments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->has_inet_aton_value()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", with at least one hex or octal value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
