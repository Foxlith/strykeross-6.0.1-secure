.class public final synthetic Lcom/google/android/material/color/utilities/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


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
    iput p1, p0, Lcom/google/android/material/color/utilities/o;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/o;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPClient;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSeqRange;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->toPrefixNormalizedSeg()Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6Address;->getSection()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4AddressSegment;->toPrefixNormalizedSeg()Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {p1}, Linet/ipaddr/ipv4/IPv4Address;->getSection()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p1}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_13
    check-cast p1, Linet/ipaddr/Address;

    invoke-virtual {p1}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Linet/ipaddr/format/AddressComponentRange;->b(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_15
    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Linet/ipaddr/format/AddressComponentRange;->c(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_16
    check-cast p1, Linet/ipaddr/IPAddress;

    invoke-virtual {p1}, Linet/ipaddr/Address;->toCanonicalString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    check-cast p1, Linet/ipaddr/IPAddress;

    invoke-virtual {p1}, Linet/ipaddr/Address;->toNormalizedString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->K1(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    return-object p1

    :pswitch_19
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->F0(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->k0(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->q1(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
