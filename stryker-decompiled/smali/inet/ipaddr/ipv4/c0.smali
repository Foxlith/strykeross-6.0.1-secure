.class public final synthetic Linet/ipaddr/ipv4/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Linet/ipaddr/ipv4/c0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/c0;->d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    .line 7
    .line 8
    iput p2, p0, Linet/ipaddr/ipv4/c0;->b:I

    .line 9
    .line 10
    iput p3, p0, Linet/ipaddr/ipv4/c0;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/c0;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/c0;->b:I

    iget v2, p0, Linet/ipaddr/ipv4/c0;->c:I

    iget-object v3, p0, Linet/ipaddr/ipv4/c0;->d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    check-cast p1, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;

    invoke-static {v3, v1, v2, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->x(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast v3, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    check-cast p1, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;

    invoke-static {v3, v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->s(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILinet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
