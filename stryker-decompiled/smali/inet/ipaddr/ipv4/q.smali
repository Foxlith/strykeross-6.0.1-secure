.class public final synthetic Linet/ipaddr/ipv4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv4/IPv4Address;


# direct methods
.method public synthetic constructor <init>(ILinet/ipaddr/ipv4/IPv4Address;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv4/q;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv4/q;->b:Linet/ipaddr/ipv4/IPv4Address;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/q;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/q;->b:Linet/ipaddr/ipv4/IPv4Address;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->H(ILinet/ipaddr/ipv4/IPv4Address;)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->J(ILinet/ipaddr/ipv4/IPv4Address;)I

    move-result p1

    return p1

    :pswitch_1
    invoke-static {p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->A0(ILinet/ipaddr/ipv4/IPv4Address;)I

    move-result p1

    return p1

    :pswitch_2
    invoke-static {p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->d0(ILinet/ipaddr/ipv4/IPv4Address;)I

    move-result p1

    return p1

    :pswitch_3
    invoke-static {p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->b0(ILinet/ipaddr/ipv4/IPv4Address;)I

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
