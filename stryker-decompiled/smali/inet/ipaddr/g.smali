.class public final synthetic Linet/ipaddr/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


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
    iput p1, p0, Linet/ipaddr/g;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/g;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->H(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->H0(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->V0(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->q(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->s(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->n(I)[Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
