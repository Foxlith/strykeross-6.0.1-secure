.class public Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6Zone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient networkInterface:Ljava/net/NetworkInterface;

.field private referencesInterface:Ljava/lang/Boolean;

.field private scopeId:I

.field zoneStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesInterface:Ljava/lang/Boolean;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    return-void
.end method

.method public constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesInterface:Ljava/lang/Boolean;

    const/4 v0, -0x1

    iput v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    return-void
.end method

.method public static checkIfScope(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-gez v4, :cond_0

    return v5

    :cond_0
    const-wide/16 v6, 0xa

    mul-long/2addr v1, v6

    int-to-long v6, v4

    add-long/2addr v1, v6

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v1, v6

    if-lez v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    long-to-int p0, v1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAssociatedIntf()Ljava/net/NetworkInterface;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesIntf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;

    if-nez v0, :cond_3

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    iget v4, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    if-ne v3, v4, :cond_2

    iput-object v1, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getAssociatedIntfMacAddr()Linet/ipaddr/mac/MACAddress;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getAssociatedIntf()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Linet/ipaddr/mac/MACAddress;

    invoke-direct {v1, v0}, Linet/ipaddr/mac/MACAddress;-><init>([B)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociatedScopeId()I
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesIntf()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getAssociatedIntf()Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_1

    if-eq v3, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v2, v1, :cond_3

    iput v2, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    :cond_3
    iget v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesIntf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->networkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toUnsignedStringLength(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, v2, v1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toUnsignedString(IILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public referencesIntf()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesInterface:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->zoneStr:Ljava/lang/String;

    invoke-static {v0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->checkIfScope(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->scopeId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesInterface:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesInterface:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public referencesScopeId()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->referencesIntf()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
