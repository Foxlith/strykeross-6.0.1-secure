.class public Linet/ipaddr/ipv4/IPv4AddressStringParameters;
.super Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/ipv4/IPv4AddressStringParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_IPV4_INET_ATON:Z = true

.field public static final DEFAULT_ALLOW_IPV4_INET_ATON_SINGLE_SEGMENT_MASK:Z = false

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final inet_aton_hex:Z

.field public final inet_aton_joinedSegments:Z

.field public final inet_aton_leading_zeros:Z

.field public final inet_aton_octal:Z

.field public final inet_aton_single_segment_mask:Z

.field private final network:Linet/ipaddr/ipv4/IPv4AddressNetwork;


# direct methods
.method public constructor <init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZZZZZLinet/ipaddr/ipv4/IPv4AddressNetwork;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;-><init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZZZZZZLinet/ipaddr/ipv4/IPv4AddressNetwork;)V

    return-void
.end method

.method public constructor <init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZZZZZZZLinet/ipaddr/ipv4/IPv4AddressNetwork;)V
    .locals 9

    .line 2
    move-object v8, p0

    move-object v0, p0

    move/from16 v1, p7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;-><init>(ZZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZ)V

    move/from16 v0, p8

    iput-boolean v0, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    move/from16 v0, p9

    iput-boolean v0, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    move/from16 v0, p10

    iput-boolean v0, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    move/from16 v0, p11

    iput-boolean v0, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    move/from16 v0, p12

    iput-boolean v0, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    move-object/from16 v0, p13

    iput-object v0, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    return-void
.end method


# virtual methods
.method public clone()Linet/ipaddr/ipv4/IPv4AddressStringParameters;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;
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
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->clone()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/ipv4/IPv4AddressStringParameters;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->compareTo(Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    iget-boolean v1, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    iget-boolean v1, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    iget-boolean v1, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    iget-boolean v1, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    iget-boolean p1, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->compareTo(Linet/ipaddr/ipv4/IPv4AddressStringParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    iget-boolean v2, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    iget-boolean v2, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    iget-boolean v2, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    iget-boolean v2, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    iget-boolean p1, p1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/IPAddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    if-nez v0, :cond_0

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv4Network()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x100

    :cond_2
    return v0
.end method

.method public toBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;
    .locals 2

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;-><init>()V

    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->access$002(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->access$102(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->access$202(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    invoke-static {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->access$302(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Z)Z

    iget-object v1, p0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->network:Linet/ipaddr/ipv4/IPv4AddressNetwork;

    invoke-static {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->access$402(Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;Linet/ipaddr/ipv4/IPv4AddressNetwork;)Linet/ipaddr/ipv4/IPv4AddressNetwork;

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->toBuilder(Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    return-object v0
.end method
