.class public final synthetic Linet/ipaddr/ipv4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv4/j;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/j;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Linet/ipaddr/mac/MACAddressSegment;->toPrefixBlockSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Linet/ipaddr/mac/MACAddressSegment;->toPrefixBlockSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toPrefixedSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->a(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toPrefixedSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toNetworkSegment(Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->a(Linet/ipaddr/ipv4/IPv4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
