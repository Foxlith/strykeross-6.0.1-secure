.class public final synthetic Linet/ipaddr/ipv6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;


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
    iput p2, p0, Linet/ipaddr/ipv6/p;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Linet/ipaddr/ipv6/p;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    .line 7
    .line 8
    iput p1, p0, Linet/ipaddr/ipv6/p;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/p;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/p;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v2, p0, Linet/ipaddr/ipv6/p;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, v2, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->e1(Linet/ipaddr/ipv6/IPv6AddressSection;IZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, v2, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->J(Linet/ipaddr/ipv6/IPv6AddressSection;IZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
