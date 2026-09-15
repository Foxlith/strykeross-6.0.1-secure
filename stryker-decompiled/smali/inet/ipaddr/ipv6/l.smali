.class public final synthetic Linet/ipaddr/ipv6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6AddressSection;


# direct methods
.method public synthetic constructor <init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv6/l;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv6/l;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/l;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/l;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->h1(ILinet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->C(ILinet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1

    :pswitch_1
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->S0(ILinet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1

    :pswitch_2
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->W0(ILinet/ipaddr/ipv6/IPv6AddressSection;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
