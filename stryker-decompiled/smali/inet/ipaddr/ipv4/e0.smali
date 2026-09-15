.class public final synthetic Linet/ipaddr/ipv4/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


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
    iput p1, p0, Linet/ipaddr/ipv4/e0;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/e0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->v(Linet/ipaddr/ipv6/IPv6AddressSeqRange;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getIPv4Count()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
