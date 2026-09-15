.class public final synthetic Linet/ipaddr/format/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


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
    iput p1, p0, Linet/ipaddr/format/util/h;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/h;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->l(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->R(Linet/ipaddr/mac/MACAddress;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->G(Linet/ipaddr/mac/MACAddress;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->b0(Linet/ipaddr/mac/MACAddress;)Z

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->L(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1}, Linet/ipaddr/mac/MACAddressSection;->t(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->B(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)Z

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->M(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->h0(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->V(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->G0(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p1

    return p1

    :pswitch_b
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->f0(Linet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p1

    return p1

    :pswitch_c
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->O0(Linet/ipaddr/ipv6/IPv6Address;)Z

    move-result p1

    return p1

    :pswitch_d
    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {p1}, Linet/ipaddr/format/util/BinaryTreeNode;->isAdded()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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
