.class public final synthetic Lv1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/a;
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;
.implements Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;
.implements Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;
.implements Linet/ipaddr/IPAddressSection$TriFunction;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$GroupingCreator;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$PrefixedGroupingCreator;
.implements Linet/ipaddr/IPAddressSection$SegFunction;
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;
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
    iput p1, p0, Lv1/n;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->b(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p1

    return-object p1
.end method

.method public final apply()Ljava/lang/Object;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 3
    iget v0, p0, Lv1/n;->a:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->p(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->j(Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->o0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_4
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->m0(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :sswitch_5
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->w(ILinet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :sswitch_6
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0xf -> :sswitch_5
        0x12 -> :sswitch_4
        0x13 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    iget v0, p0, Lv1/n;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/IPAddressSection;

    check-cast p2, Linet/ipaddr/IPAddressSection;

    check-cast p3, Linet/ipaddr/IPAddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/IPAddressSection;->k(Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/IPAddressSegmentSeries;

    check-cast p2, Linet/ipaddr/IPAddressSegmentSeries;

    check-cast p3, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-static {p1, p2, p3}, Linet/ipaddr/IPAddressSection;->coverWithPrefixBlock(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/IPAddress;

    check-cast p2, Linet/ipaddr/IPAddress;

    check-cast p3, Linet/ipaddr/IPAddress;

    invoke-static {p1, p2, p3}, Linet/ipaddr/IPAddress;->d(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 1

    .line 5
    iget v0, p0, Lv1/n;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p3, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection;->y0(ZZLinet/ipaddr/ipv6/IPv6Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->i0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->I0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->P(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->z0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->N(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->l0(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->a0(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->v0(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->U(ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->O0(ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 6
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->k(Linet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z

    move-result p1

    return p1
.end method

.method public final countLength(Landroid/text/Editable;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/text/Editable;)I

    move-result p1

    return p1
.end method

.method public final createDivision(JJII)Linet/ipaddr/format/AddressDivisionBase;
    .locals 8

    .line 1
    iget v0, p0, Lv1/n;->a:I

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
    .packed-switch 0x7
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

.method public final onReady(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->E(Z)V

    return-void
.end method
