.class public Linet/ipaddr/IPAddressStringParameters;
.super Linet/ipaddr/AddressStringParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;,
        Linet/ipaddr/IPAddressStringParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/AddressStringParameters;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/IPAddressStringParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_IPV4:Z = true

.field public static final DEFAULT_ALLOW_IPV6:Z = true

.field public static final DEFAULT_ALLOW_MASK:Z = true

.field public static final DEFAULT_ALLOW_PREFIX:Z = true

.field public static final DEFAULT_ALLOW_PREFIX_ONLY:Z = true

.field public static final DEFAULT_EMPTY_IS_LOOPBACK:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final allowIPv4:Z

.field public final allowIPv6:Z

.field public final allowMask:Z

.field public final allowPrefix:Z

.field public final allowPrefixOnly:Z

.field public final emptyIsLoopback:Z

.field private ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

.field private ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;


# direct methods
.method public constructor <init>(ZZZZZZZZZLinet/ipaddr/ipv4/IPv4AddressStringParameters;Linet/ipaddr/ipv6/IPv6AddressStringParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/AddressStringParameters;-><init>(ZZZ)V

    iput-boolean p7, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    iput-boolean p4, p0, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    iput-boolean p5, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    iput-boolean p6, p0, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    iput-boolean p8, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    iput-boolean p9, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    iput-object p11, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    iput-object p10, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Linet/ipaddr/AddressStringParameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->clone()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Linet/ipaddr/IPAddressStringParameters;
    .locals 2

    .line 2
    invoke-super {p0}, Linet/ipaddr/AddressStringParameters;->clone()Linet/ipaddr/AddressStringParameters;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressStringParameters;

    iget-object v1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->clone()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    iget-object v1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->clone()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->clone()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/IPAddressStringParameters;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters;->compareTo(Linet/ipaddr/AddressStringParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    iget-object v1, p1, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->compareTo(Linet/ipaddr/ipv4/IPv4AddressStringParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    iget-object v1, p1, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->compareTo(Linet/ipaddr/ipv6/IPv6AddressStringParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    iget-boolean p1, p1, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters;->compareTo(Linet/ipaddr/IPAddressStringParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/IPAddressStringParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Linet/ipaddr/IPAddressStringParameters;

    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    iget-object v2, v0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    invoke-virtual {p1, v2}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    iget-object v2, v0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    invoke-virtual {p1, v2}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    iget-boolean v0, v0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    return-object v0
.end method

.method public getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->hashCode()I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-eqz v1, :cond_4

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public inferVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    if-nez v0, :cond_1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    if-eqz v0, :cond_1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressStringParameters;->toBuilder(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder(Z)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 2

    .line 2
    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-super {p0, v0}, Linet/ipaddr/AddressStringParameters;->toBuilder(Linet/ipaddr/AddressStringParameters$BuilderBase;)Linet/ipaddr/AddressStringParameters$BuilderBase;

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->access$002(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->access$102(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->access$202(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->access$302(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->access$402(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    invoke-static {v0, v1}, Linet/ipaddr/IPAddressStringParameters$Builder;->access$502(Linet/ipaddr/IPAddressStringParameters$Builder;Z)Z

    iget-object v1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv4Options:Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->toBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv4Builder:Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    iget-object v1, p0, Linet/ipaddr/IPAddressStringParameters;->ipv6Options:Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->toBuilder(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object p1

    iput-object p1, v0, Linet/ipaddr/IPAddressStringParameters$Builder;->ipv6Builder:Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    iget-boolean p1, p0, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    iput-boolean p1, v0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowSingleSegment:Z

    iget-boolean p1, p0, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    iput-boolean p1, v0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowEmpty:Z

    iget-boolean p1, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    iput-boolean p1, v0, Linet/ipaddr/AddressStringParameters$BuilderBase;->allowAll:Z

    return-object v0
.end method
