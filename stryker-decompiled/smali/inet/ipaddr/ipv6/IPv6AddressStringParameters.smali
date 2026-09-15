.class public Linet/ipaddr/ipv6/IPv6AddressStringParameters;
.super Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/ipv6/IPv6AddressStringParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_BASE85:Z = true

.field public static final DEFAULT_ALLOW_MIXED:Z = true

.field public static final DEFAULT_ALLOW_ZONE:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final allowBase85:Z

.field public final allowMixed:Z

.field public final allowZone:Z

.field private embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

.field private final network:Linet/ipaddr/ipv6/IPv6AddressNetwork;


# direct methods
.method public constructor <init>(ZZZZLinet/ipaddr/IPAddressStringParameters;ZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZLinet/ipaddr/ipv6/IPv6AddressNetwork;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;-><init>(ZZZZLinet/ipaddr/IPAddressStringParameters;ZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZLinet/ipaddr/ipv6/IPv6AddressNetwork;)V

    return-void
.end method

.method public constructor <init>(ZZZZLinet/ipaddr/IPAddressStringParameters;ZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZLinet/ipaddr/ipv6/IPv6AddressNetwork;)V
    .locals 9

    .line 2
    move-object v8, p0

    move-object v0, p0

    move/from16 v1, p11

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;-><init>(ZZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZ)V

    move v0, p4

    iput-boolean v0, v8, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    move v0, p6

    iput-boolean v0, v8, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    move/from16 v0, p7

    iput-boolean v0, v8, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    move-object v0, p5

    iput-object v0, v8, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    move-object/from16 v0, p12

    iput-object v0, v8, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    return-void
.end method


# virtual methods
.method public clone()Linet/ipaddr/ipv6/IPv6AddressStringParameters;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->clone()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;
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
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->clone()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/ipv6/IPv6AddressStringParameters;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->compareTo(Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    iget-object v1, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->compareTo(Linet/ipaddr/ipv4/IPv4AddressStringParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    iget-boolean v1, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    iget-boolean v1, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    iget-boolean p1, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->compareTo(Linet/ipaddr/ipv6/IPv6AddressStringParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    iget-object v2, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v2}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    iget-boolean v2, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    iget-boolean v2, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    iget-boolean p1, p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getMixedParameters()Linet/ipaddr/IPAddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    return-object v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    if-nez v0, :cond_0

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->hashCode()I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public toBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->toBuilder(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;
    .locals 2

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;-><init>()V

    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->access$002(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->access$102(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->access$202(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Z)Z

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->network:Linet/ipaddr/ipv6/IPv6AddressNetwork;

    invoke-static {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->access$302(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Linet/ipaddr/ipv6/IPv6AddressNetwork;)Linet/ipaddr/ipv6/IPv6AddressNetwork;

    if-nez p1, :cond_0

    iget-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->embeddedIPv4Options:Linet/ipaddr/IPAddressStringParameters;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Linet/ipaddr/IPAddressStringParameters;->toBuilder(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object p1

    invoke-static {v0, p1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->access$402(Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;Linet/ipaddr/IPAddressStringParameters$Builder;)Linet/ipaddr/IPAddressStringParameters$Builder;

    :cond_0
    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->toBuilder(Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    return-object p1
.end method
