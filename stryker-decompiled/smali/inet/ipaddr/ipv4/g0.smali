.class public final synthetic Linet/ipaddr/ipv4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv4/g0;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv4/g0;->b:Ljava/io/Serializable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/g0;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/g0;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Linet/ipaddr/mac/MACAddressSegment;

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v1, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->Z(Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->i(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->q(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    check-cast p2, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->r(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;[Linet/ipaddr/ipv4/IPv4AddressSegment;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSeqRange;

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
