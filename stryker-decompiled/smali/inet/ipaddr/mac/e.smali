.class public final synthetic Linet/ipaddr/mac/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


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
    iput p1, p0, Linet/ipaddr/mac/e;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/mac/e;->b:Linet/ipaddr/mac/MACAddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/mac/e;->a:I

    iget-object v1, p0, Linet/ipaddr/mac/e;->b:Linet/ipaddr/mac/MACAddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Linet/ipaddr/mac/MACAddressSection;->p(ILinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1, v1}, Linet/ipaddr/mac/MACAddressSection;->S(ILinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {v1, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p1, v1}, Linet/ipaddr/mac/MACAddressSection;->q(ILinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
