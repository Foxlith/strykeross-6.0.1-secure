.class public Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
.super Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private inet_aton_hex:Z

.field private inet_aton_joinedSegments:Z

.field private inet_aton_leading_zeros:Z

.field private inet_aton_octal:Z

.field private inet_aton_single_segment_mask:Z

.field mixedParent:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

.field private network:Linet/ipaddr/ipv4/IPv4AddressNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_hex:Z

    iput-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_octal:Z

    iput-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_leading_zeros:Z

    iput-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_joinedSegments:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_single_segment_mask:Z

    return-void
.end method

.method public static synthetic access$002(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_hex:Z

    return p1
.end method

.method public static synthetic access$102(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_octal:Z

    return p1
.end method

.method public static synthetic access$202(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_joinedSegments:Z

    return p1
.end method

.method public static synthetic access$302(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_single_segment_mask:Z

    return p1
.end method

.method public static synthetic access$402(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic allowBinary(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowBinary(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowBinary(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowUnlimitedLeadingZeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public bridge synthetic allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public allow_inet_aton(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_hex:Z

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_octal:Z

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_joinedSegments:Z

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public allow_inet_aton_hex(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_hex:Z

    return-object p0
.end method

.method public allow_inet_aton_joined_segments(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_joinedSegments:Z

    return-object p0
.end method

.method public allow_inet_aton_leading_zeros(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_leading_zeros:Z

    return-object p0
.end method

.method public allow_inet_aton_octal(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_octal:Z

    return-object p0
.end method

.method public allow_inet_aton_single_segment_mask(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_single_segment_mask:Z

    return-object p0
.end method

.method public getEmbeddedIPv4AddressParentBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->mixedParent:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-object v0
.end method

.method public bridge synthetic getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMixedParent(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->mixedParent:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-void
.end method

.method public setNetwork(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    return-object p0
.end method

.method public bridge synthetic setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p0
.end method

.method public toParams()Linet/ipaddr/ipv4/IPv4AddressStringParameters;
    .locals 15

    new-instance v14, Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    iget-boolean v2, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros:Z

    iget-boolean v3, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    iget-object v4, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-boolean v5, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator:Z

    iget-boolean v6, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize:Z

    iget-boolean v7, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary:Z

    iget-boolean v8, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_hex:Z

    iget-boolean v9, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_octal:Z

    iget-boolean v10, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_leading_zeros:Z

    iget-boolean v11, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_joinedSegments:Z

    iget-boolean v12, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->inet_aton_single_segment_mask:Z

    iget-object v13, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;-><init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZZZZZZLinet/ipaddr/ipv4/IPv4AddressNetwork;)V

    return-object v14
.end method
