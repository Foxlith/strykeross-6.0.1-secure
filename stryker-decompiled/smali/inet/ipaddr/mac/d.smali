.class public final synthetic Linet/ipaddr/mac/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/mac/MACAddressSection;


# direct methods
.method public synthetic constructor <init>(ILinet/ipaddr/mac/MACAddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/mac/d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/mac/d;->b:Linet/ipaddr/mac/MACAddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/mac/d;->a:I

    iget-object v1, p0, Linet/ipaddr/mac/d;->b:Linet/ipaddr/mac/MACAddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {v1}, Linet/ipaddr/mac/MACAddressSection;->N(Linet/ipaddr/mac/MACAddressSection;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {v1}, Linet/ipaddr/mac/MACAddressSection;->k(Linet/ipaddr/mac/MACAddressSection;)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
