.class public final synthetic Linet/ipaddr/ipv6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


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
    iput p2, p0, Linet/ipaddr/ipv6/e;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv6/e;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/e;->a:I

    iget v1, p0, Linet/ipaddr/ipv6/e;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->n(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->z(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->B(ILinet/ipaddr/ipv6/IPv6AddressSection;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->D0(ILinet/ipaddr/ipv6/IPv6Address;)Z

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
