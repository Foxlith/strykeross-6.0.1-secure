.class public Linet/ipaddr/IPAddressStringParameters$Builder;
.super Linet/ipaddr/AddressStringParameters$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static DEFAULT_IPV4_OPTS:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

.field private static DEFAULT_IPV6_OPTS:Linet/ipaddr/ipv6/IPv6AddressStringParameters;


# instance fields
.field private allowIPv4:Z

.field private allowIPv6:Z

.field private allowMask:Z

.field private allowPrefix:Z

.field private allowPrefixOnly:Z

.field private emptyIsLoopback:Z

.field ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

.field ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

.field parent:Linet/ipaddr/HostNameParameters$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->toParams()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/IPAddressStringParameters$Builder;->DEFAULT_IPV4_OPTS:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->toParams()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/IPAddressStringParameters$Builder;->DEFAULT_IPV6_OPTS:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/AddressStringParameters$BuilderBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->emptyIsLoopback:Z

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix:Z

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask:Z

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly:Z

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv4:Z

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv6:Z

    return-void
.end method

.method public static synthetic access$002(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly:Z

    return p1
.end method

.method public static synthetic access$102(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->emptyIsLoopback:Z

    return p1
.end method

.method public static synthetic access$202(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix:Z

    return p1
.end method

.method public static synthetic access$302(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask:Z

    return p1
.end method

.method public static synthetic access$402(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv6:Z

    return p1
.end method

.method public static synthetic access$502(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv4:Z

    return p1
.end method


# virtual methods
.method public bridge synthetic allowAll(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowAll(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowAll(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object p1
.end method

.method public bridge synthetic allowEmpty(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object p1
.end method

.method public allowIPv4(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv4:Z

    return-object p0
.end method

.method public allowIPv6(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv6:Z

    return-object p0
.end method

.method public allowMask(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask:Z

    return-object p0
.end method

.method public allowPrefix(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix:Z

    return-object p0
.end method

.method public allowPrefixOnly(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly:Z

    return-object p0
.end method

.method public bridge synthetic allowSingleSegment(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowSingleSegment(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowSingleSegment(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment(Z)Linet/ipaddr/AddressStringParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object p1
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-object p0
.end method

.method public allow_inet_aton(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allow_inet_aton(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allow_mixed_inet_aton(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-object p0
.end method

.method public getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;-><init>()V

    iput-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    iput-object p0, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->parent:Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object v0
.end method

.method public getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;-><init>()V

    iput-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    iput-object p0, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->parent:Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object v0
.end method

.method public getParentBuilder()Linet/ipaddr/HostNameParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->parent:Linet/ipaddr/HostNameParameters$Builder;

    return-object v0
.end method

.method public setEmptyAsLoopback(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->emptyIsLoopback:Z

    return-object p0
.end method

.method public setIPv4AddressParameters(Linet/ipaddr/ipv4/IPv4AddressStringParameters;)V
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->toBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    return-void
.end method

.method public setIPv6AddressParameters(Linet/ipaddr/ipv6/IPv6AddressStringParameters;)V
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->toBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-void
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-object p0
.end method

.method public toParams()Linet/ipaddr/IPAddressStringParameters;
    .locals 13

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/IPAddressStringParameters$Builder;->DEFAULT_IPV4_OPTS:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->toParams()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    if-nez v0, :cond_1

    sget-object v0, Linet/ipaddr/IPAddressStringParameters$Builder;->DEFAULT_IPV6_OPTS:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    :goto_2
    move-object v12, v0

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->toParams()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v0, Linet/ipaddr/IPAddressStringParameters;

    iget-boolean v2, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty:Z

    iget-boolean v3, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll:Z

    iget-boolean v4, p0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment:Z

    iget-boolean v5, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->emptyIsLoopback:Z

    iget-boolean v6, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix:Z

    iget-boolean v7, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask:Z

    iget-boolean v8, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly:Z

    iget-boolean v9, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv4:Z

    iget-boolean v10, p0, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv6:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Linet/ipaddr/IPAddressStringParameters;-><init>(ZZZZZZZZZLinet/ipaddr/ipv4/IPv4AddressStringParameters;Linet/ipaddr/ipv6/IPv6AddressStringParameters;)V

    return-object v0
.end method
