.class public final synthetic Linet/ipaddr/ipv6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv6/r;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv6/r;->b:I

    .line 7
    .line 8
    iput p2, p0, Linet/ipaddr/ipv6/r;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/r;->a:I

    iget v1, p0, Linet/ipaddr/ipv6/r;->b:I

    iget v2, p0, Linet/ipaddr/ipv6/r;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->A0(IILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->b0(IILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
