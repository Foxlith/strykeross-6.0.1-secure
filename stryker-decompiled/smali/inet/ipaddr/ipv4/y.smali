.class public final synthetic Linet/ipaddr/ipv4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;


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
    iput p2, p0, Linet/ipaddr/ipv4/y;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv4/y;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/y;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/y;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->q0(IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->i0(IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->x(IZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->L0(IZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

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
