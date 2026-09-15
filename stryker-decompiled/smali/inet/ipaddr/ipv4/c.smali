.class public final synthetic Linet/ipaddr/ipv4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/c;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Linet/ipaddr/ipv4/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput p1, p0, Linet/ipaddr/ipv4/c;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/c;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/c;->b:I

    iget-object v2, p0, Linet/ipaddr/ipv4/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv6/IPv6Address;->k(Linet/ipaddr/ipv6/IPv6Address;I[Linet/ipaddr/ipv6/IPv6AddressSegment;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast v2, Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->A(Linet/ipaddr/ipv4/IPv4AddressSection;I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast v2, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4Address;->g(Linet/ipaddr/ipv4/IPv4Address;I[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
