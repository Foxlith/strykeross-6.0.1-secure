.class public Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private mask:Linet/ipaddr/format/validate/ParsedIPAddress;

.field private mergedMask:Linet/ipaddr/IPAddress;

.field private networkPrefixLength:Ljava/lang/Integer;

.field private final port:Ljava/lang/Integer;

.field private final service:Ljava/lang/CharSequence;

.field private final zone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;)V
    .locals 6

    .line 2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 6

    .line 3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 6

    .line 4
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->cachePorts(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .line 5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    iput-object p2, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    iput-object p3, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->zone:Ljava/lang/CharSequence;

    iput-object p4, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->port:Ljava/lang/Integer;

    iput-object p5, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->service:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .locals 6

    .line 7
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static cachePorts(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private overrideMask(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 0

    iget-object p1, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz p1, :cond_0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    :cond_0
    return-void
.end method

.method private overridePrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 0

    iget-object p1, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getEquivalentPrefixLength()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaskLower()Linet/ipaddr/IPAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mergedMask:Linet/ipaddr/IPAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getValForMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method public getService()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->service:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getZone()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->zone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public inferVersion(Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress$IPVersion;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    invoke-static {v1}, Linet/ipaddr/IPAddress;->getBitCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-virtual {p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p1

    iget-boolean p1, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    if-nez p1, :cond_3

    sget-object p1, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object p1

    :cond_0
    iget-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingIPv6()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object p1

    :cond_1
    iget-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingIPv4()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    return-object p1

    :cond_2
    iget-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->zone:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object p1, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public merge(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    :goto_0
    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    if-nez v0, :cond_2

    iget-object p1, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    goto :goto_2

    :cond_2
    iget-object v0, p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddress;->mask(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddress;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mergedMask:Linet/ipaddr/IPAddress;

    :cond_3
    :goto_2
    return-void
.end method

.method public overridePrefix(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->overridePrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->overrideMask(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "network prefix length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->networkPrefixLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->mask:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " zone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->zone:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->port:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->service:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
