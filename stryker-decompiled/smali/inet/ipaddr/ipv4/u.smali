.class public final synthetic Linet/ipaddr/ipv4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv4/IPv4AddressSection;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/ipv4/u;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Linet/ipaddr/ipv4/u;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/u;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(ZZLjava/lang/Object;)Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/u;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/u;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    iget-object v2, p0, Linet/ipaddr/ipv4/u;->c:Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    check-cast p3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, v2, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->N0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4AddressSection;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p3, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, v2, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSection;->t0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;ZZLinet/ipaddr/ipv4/IPv4Address;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
