.class public final synthetic Linet/ipaddr/ipv6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6Address;


# direct methods
.method public synthetic constructor <init>(ILinet/ipaddr/ipv6/IPv6Address;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv6/d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv6/d;->b:Linet/ipaddr/ipv6/IPv6Address;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/d;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/d;->b:Linet/ipaddr/ipv6/IPv6Address;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->C0(ILinet/ipaddr/ipv6/IPv6Address;)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->r0(ILinet/ipaddr/ipv6/IPv6Address;)I

    move-result p1

    return p1

    :pswitch_1
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->u0(ILinet/ipaddr/ipv6/IPv6Address;)I

    move-result p1

    return p1

    :pswitch_2
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->Y0(ILinet/ipaddr/ipv6/IPv6Address;)I

    move-result p1

    return p1

    :pswitch_3
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->b1(ILinet/ipaddr/ipv6/IPv6Address;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
