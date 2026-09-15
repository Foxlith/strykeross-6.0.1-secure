.class public final synthetic Linet/ipaddr/ipv6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSection$SegFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6AddressSection;


# direct methods
.method public synthetic constructor <init>(ILinet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv6/n;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv6/n;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/n;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/n;->b:Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast p1, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->g0(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->Z(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
