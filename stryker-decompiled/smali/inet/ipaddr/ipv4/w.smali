.class public final synthetic Linet/ipaddr/ipv4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Linet/ipaddr/ipv4/w;->a:I

    iput-object p1, p0, Linet/ipaddr/ipv4/w;->b:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    iput p2, p0, Linet/ipaddr/ipv4/w;->d:I

    iput p3, p0, Linet/ipaddr/ipv4/w;->e:I

    iput-object p4, p0, Linet/ipaddr/ipv4/w;->c:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Linet/ipaddr/ipv4/w;->a:I

    iput-object p1, p0, Linet/ipaddr/ipv4/w;->b:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    iput-object p2, p0, Linet/ipaddr/ipv4/w;->c:Ljava/lang/Integer;

    iput p3, p0, Linet/ipaddr/ipv4/w;->d:I

    iput p4, p0, Linet/ipaddr/ipv4/w;->e:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/w;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/w;->e:I

    iget v2, p0, Linet/ipaddr/ipv4/w;->d:I

    iget-object v3, p0, Linet/ipaddr/ipv4/w;->b:Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    iget-object v4, p0, Linet/ipaddr/ipv4/w;->c:Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;

    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->o(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;

    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->v(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;IILjava/lang/Integer;Linet/ipaddr/IPAddressSeqRange$IPAddressSeqRangeSplitterSink;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->I(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->H0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->J0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->g0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->y(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->X(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->s0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    invoke-static {v3, v4, v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->e0(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

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
