.class public Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
.super Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static DEFAULT_MIXED_OPTS:Linet/ipaddr/IPAddressStringParameters;


# instance fields
.field private allowBase85:Z

.field private allowMixed:Z

.field private allowZone:Z

.field private embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

.field private network:Linet/ipaddr/ipv6/IPv6AddressNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowAll(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->DEFAULT_MIXED_OPTS:Linet/ipaddr/IPAddressStringParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed:Z

    iput-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    iput-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowBase85:Z

    return-void
.end method

.method public static synthetic access$002(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed:Z

    return p1
.end method

.method public static synthetic access$102(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    return p1
.end method

.method public static synthetic access$202(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowBase85:Z

    return p1
.end method

.method public static synthetic access$302(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Linet/ipaddr/ipv6/IPv6AddressNetwork;)Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    return-object p1
.end method

.method public static synthetic access$402(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Linet/ipaddr/IPAddressStringParameters$Builder;)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object p1
.end method


# virtual methods
.method public allowBase85(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowBase85:Z

    return-object p0
.end method

.method public bridge synthetic allowBinary(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowBinary(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowBinary(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public allowMixed(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed:Z

    return-object p0
.end method

.method public bridge synthetic allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public allowZone(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4ParametersBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    iput-boolean p1, v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    return-object p0
.end method

.method public allow_mixed_inet_aton(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4ParametersBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allow_inet_aton(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    return-object p0
.end method

.method public getEmbeddedIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4ParametersBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedIPv4ParametersBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowAll(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv6(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    iput-boolean v1, v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setMixedParent(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;)V

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object v0
.end method

.method public bridge synthetic getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNetwork(Linet/ipaddr/ipv6/IPv6AddressNetwork;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    return-object p0
.end method

.method public bridge synthetic setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getEmbeddedIPv4ParametersBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public toParams()Linet/ipaddr/ipv6/IPv6AddressStringParameters;
    .locals 14

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->embeddedIPv4OptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->DEFAULT_MIXED_OPTS:Linet/ipaddr/IPAddressStringParameters;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    iget-boolean v2, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    iget-boolean v3, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros:Z

    iget-boolean v4, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    iget-boolean v5, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed:Z

    iget-boolean v7, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone:Z

    iget-boolean v8, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowBase85:Z

    iget-object v9, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-boolean v10, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator:Z

    iget-boolean v11, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize:Z

    iget-boolean v12, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary:Z

    iget-object v13, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;-><init>(ZZZZLinet/ipaddr/IPAddressStringParameters;ZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZLinet/ipaddr/ipv6/IPv6AddressNetwork;)V

    return-object v0
.end method
