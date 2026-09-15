.class public final synthetic Linet/ipaddr/ipv6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Linet/ipaddr/ipv6/s;->a:I

    iput-object p1, p0, Linet/ipaddr/ipv6/s;->b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    iput p2, p0, Linet/ipaddr/ipv6/s;->d:I

    iput p3, p0, Linet/ipaddr/ipv6/s;->e:I

    iput-object p4, p0, Linet/ipaddr/ipv6/s;->c:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Linet/ipaddr/ipv6/s;->a:I

    iput-object p1, p0, Linet/ipaddr/ipv6/s;->b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    iput-object p2, p0, Linet/ipaddr/ipv6/s;->c:Ljava/lang/Integer;

    iput p3, p0, Linet/ipaddr/ipv6/s;->d:I

    iput p4, p0, Linet/ipaddr/ipv6/s;->e:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/s;->a:I

    iget v1, p0, Linet/ipaddr/ipv6/s;->e:I

    iget v2, p0, Linet/ipaddr/ipv6/s;->d:I

    iget-object v3, p0, Linet/ipaddr/ipv6/s;->b:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    iget-object v4, p0, Linet/ipaddr/ipv6/s;->c:Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;

    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->l(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;

    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->m(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->s0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->U(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->v0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->m0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->z0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->e0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->I(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->x0(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
