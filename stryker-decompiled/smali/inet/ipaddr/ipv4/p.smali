.class public final synthetic Linet/ipaddr/ipv4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSection$SegFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Linet/ipaddr/IPAddressSection;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/IPAddressSection;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/p;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/p;->c:Linet/ipaddr/IPAddressSection;

    .line 7
    .line 8
    iput-boolean p2, p0, Linet/ipaddr/ipv4/p;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/p;->a:I

    iget-boolean v1, p0, Linet/ipaddr/ipv4/p;->b:Z

    iget-object v2, p0, Linet/ipaddr/ipv4/p;->c:Linet/ipaddr/IPAddressSection;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSection;->o0(Linet/ipaddr/ipv6/IPv6AddressSection;ZLjava/lang/Integer;I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v2, Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSection;->O(Linet/ipaddr/ipv4/IPv4AddressSection;ZLjava/lang/Integer;I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
