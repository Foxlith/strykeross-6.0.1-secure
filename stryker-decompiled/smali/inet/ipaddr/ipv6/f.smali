.class public final synthetic Linet/ipaddr/ipv6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6AddressSection;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv6/f;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Linet/ipaddr/ipv6/f;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    .line 7
    .line 8
    iput p1, p0, Linet/ipaddr/ipv6/f;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/f;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/f;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v2, p0, Linet/ipaddr/ipv6/f;->c:I

    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->m1(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v1, p1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->d0(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-static {v1, p1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection;->y(Linet/ipaddr/ipv6/IPv6AddressSection;[Linet/ipaddr/ipv6/IPv6AddressSegment;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
