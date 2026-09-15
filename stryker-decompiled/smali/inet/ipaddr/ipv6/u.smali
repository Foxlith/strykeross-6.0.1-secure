.class public final synthetic Linet/ipaddr/ipv6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv6/u;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv6/u;->b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/u;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/u;->b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    check-cast p2, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->u(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->k(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->j(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;[Linet/ipaddr/ipv6/IPv6AddressSegment;[Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
