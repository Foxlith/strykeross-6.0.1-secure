.class public final synthetic Linet/ipaddr/ipv4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


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
    iput p1, p0, Linet/ipaddr/ipv4/f;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/f;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->assignPrefixForSingleBlock()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->withoutPrefixLength()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getUpper()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getLower()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_13
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->assignPrefixForSingleBlock()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_17
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->withoutPrefixLength()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_19
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    :pswitch_1c
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
