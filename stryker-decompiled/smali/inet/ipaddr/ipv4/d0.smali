.class public final synthetic Linet/ipaddr/ipv4/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeIteratorProvider;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv4/d0;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/d0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->t(ZZLinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->h(ZZLinet/ipaddr/ipv4/IPv4AddressSeqRange;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
