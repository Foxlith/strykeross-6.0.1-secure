.class public final synthetic Linet/ipaddr/mac/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/mac/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/mac/f;->b:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/mac/f;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/mac/f;->a:I

    iget-object v1, p0, Linet/ipaddr/mac/f;->b:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    iget-object v2, p0, Linet/ipaddr/mac/f;->c:Ljava/lang/Integer;

    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v2, p1}, Linet/ipaddr/mac/MACAddressSection;->a0(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, v2, p1}, Linet/ipaddr/mac/MACAddressSection;->n(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v1, v2, p1}, Linet/ipaddr/mac/MACAddressSection;->x(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v1, v2, p1}, Linet/ipaddr/mac/MACAddressSection;->C(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {v1, v2, p1}, Linet/ipaddr/mac/MACAddressSection;->O(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {v1, v2, p1}, Linet/ipaddr/mac/MACAddressSection;->V(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

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
