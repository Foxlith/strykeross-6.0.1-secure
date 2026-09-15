.class public final synthetic Linet/ipaddr/ipv6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;
.implements Linet/ipaddr/IPAddressSection$SegFunction;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;
.implements Linet/ipaddr/IPAddressSeqRange$SegValueComparator;


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
    iput p1, p0, Linet/ipaddr/ipv6/h;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/h;->a:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->o(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->C(Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->k1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_4
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->p0(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_5
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_6
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p2, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->a1(ILinet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 2
    iget v0, p0, Linet/ipaddr/ipv6/h;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->v(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->U(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->u(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->z(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p3, Linet/ipaddr/mac/MACAddress;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->I(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p3, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->H(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p3, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->J(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p3, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->K(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p3, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->Y(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->E(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->X0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->a0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->z(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->N(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->c0(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->F0(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->k0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p3, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->N0(ZZLinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 3
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->s(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z

    move-result p1

    return p1
.end method

.method public final createDivision(JJII)Linet/ipaddr/format/AddressDivisionBase;
    .locals 8

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/h;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Linet/ipaddr/format/standard/IPAddressBitsDivision;-><init>(JJII)V

    return-object v0

    :pswitch_0
    new-instance v0, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Linet/ipaddr/format/standard/IPAddressBitsDivision;-><init>(JJII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public final createDivision(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)Linet/ipaddr/format/AddressDivisionBase;
    .locals 10

    .line 2
    new-instance v9, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/standard/IPAddressBitsDivision;-><init>(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    return-object v9
.end method
