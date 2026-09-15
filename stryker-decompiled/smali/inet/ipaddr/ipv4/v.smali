.class public final synthetic Linet/ipaddr/ipv4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/v;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv4/v;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/v;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/v;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->W(ILinet/ipaddr/mac/MACAddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->P(ILinet/ipaddr/mac/MACAddress;)J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->A(ILinet/ipaddr/mac/MACAddress;)J

    move-result-wide v0

    return-wide v0

    :pswitch_2
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->s(ILinet/ipaddr/mac/MACAddress;)J

    move-result-wide v0

    return-wide v0

    :pswitch_3
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->o(ILinet/ipaddr/mac/MACAddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_4
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->i(ILinet/ipaddr/mac/MACAddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_5
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->A(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J

    move-result-wide v0

    return-wide v0

    :pswitch_6
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->y(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)J

    move-result-wide v0

    return-wide v0

    :pswitch_7
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->U0(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_8
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->w0(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_9
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->M0(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_a
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->F(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_b
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->D(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_c
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->K0(ILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_d
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->g1(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_e
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->j0(ILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_f
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->l(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J

    move-result-wide v0

    return-wide v0

    :pswitch_10
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->u(ILinet/ipaddr/ipv4/IPv4AddressSeqRange;)J

    move-result-wide v0

    return-wide v0

    :pswitch_11
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->p0(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_12
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->F(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_13
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->r0(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide v0

    return-wide v0

    :pswitch_14
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->L(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_15
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->Y(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_16
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->k0(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_17
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->T0(ILinet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_18
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->W(ILinet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
