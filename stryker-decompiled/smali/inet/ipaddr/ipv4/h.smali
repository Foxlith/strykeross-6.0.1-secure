.class public final synthetic Linet/ipaddr/ipv4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/h;->b:Ljava/io/Serializable;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/h;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/h;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/h;->c:Ljava/lang/Object;

    iget-object v2, p0, Linet/ipaddr/ipv4/h;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Ljava/math/BigInteger;

    check-cast v1, Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv6/IPv6Address;->h(Ljava/math/BigInteger;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v2, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast v1, Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv6/IPv6Address;->e([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast v1, Linet/ipaddr/mac/MACAddressSection;

    check-cast p1, Linet/ipaddr/Address;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv6/IPv6Address;->i(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast v2, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast v1, Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4Address;->f([Linet/ipaddr/ipv4/IPv4AddressSegment;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
