.class public final synthetic Linet/ipaddr/ipv6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


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
    iput p1, p0, Linet/ipaddr/ipv6/i;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv6/i;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/i;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/i;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->K(Linet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->P0(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->segmentsNonZeroHostIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->B0(Linet/ipaddr/ipv6/IPv6AddressSection;)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
