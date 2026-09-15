.class public final synthetic Linet/ipaddr/ipv6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


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
    iput p1, p0, Linet/ipaddr/ipv6/k;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv6/k;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/k;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/k;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->L(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->n1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->R(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->n0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->E0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->L0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->Q(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->Y(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->f1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p1, v1}, Linet/ipaddr/ipv6/IPv6AddressSection;->x(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_15
    invoke-virtual {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
