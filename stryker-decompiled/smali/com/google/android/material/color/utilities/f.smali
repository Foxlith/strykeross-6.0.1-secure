.class public final synthetic Lcom/google/android/material/color/utilities/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/color/utilities/f;->a:I

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/color/utilities/f;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/f;->a:I

    iget v1, p0, Lcom/google/android/material/color/utilities/f;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->i(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSeqRange;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->h(ILinet/ipaddr/ipv6/IPv6AddressSeqRange;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->A(ILinet/ipaddr/ipv6/IPv6AddressSection;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->O(ILinet/ipaddr/ipv6/IPv6Address;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->l(ILcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->n(ILcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->o(ILcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
