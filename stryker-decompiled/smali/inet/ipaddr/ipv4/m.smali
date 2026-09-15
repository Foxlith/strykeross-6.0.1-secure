.class public final synthetic Linet/ipaddr/ipv4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSection$SegFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv4/IPv4AddressSection;


# direct methods
.method public synthetic constructor <init>(ILinet/ipaddr/ipv4/IPv4AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv4/m;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv4/m;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/m;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/m;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p1, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-static {p2, p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->G(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p2, p1, v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->D0(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
