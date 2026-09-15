.class public final synthetic Linet/ipaddr/mac/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/mac/MACAddressSection;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/mac/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/mac/i;->b:Linet/ipaddr/mac/MACAddressSection;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/mac/i;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/mac/i;->a:I

    iget-object v1, p0, Linet/ipaddr/mac/i;->c:Ljava/lang/Integer;

    iget-object v2, p0, Linet/ipaddr/mac/i;->b:Linet/ipaddr/mac/MACAddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->E(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v2, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->g(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v2, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->j(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v2, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->y(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;

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
