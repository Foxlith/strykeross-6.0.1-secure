.class public final synthetic Linet/ipaddr/ipv6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


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
    iput p3, p0, Linet/ipaddr/ipv6/q;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv6/q;->b:I

    .line 7
    .line 8
    iput p2, p0, Linet/ipaddr/ipv6/q;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/q;->a:I

    iget v1, p0, Linet/ipaddr/ipv6/q;->b:I

    iget v2, p0, Linet/ipaddr/ipv6/q;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->j1(IILinet/ipaddr/ipv6/IPv6AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->W(IILinet/ipaddr/ipv6/IPv6Address;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
