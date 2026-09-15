.class public final synthetic Linet/ipaddr/ipv4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv4/IPv4AddressSection;

.field public final synthetic c:Linet/ipaddr/ipv4/IPv4AddressSection;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/x;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/x;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/x;->c:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/x;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/x;->c:Linet/ipaddr/ipv4/IPv4AddressSection;

    iget-object v2, p0, Linet/ipaddr/ipv4/x;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->u0(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->Q0(Linet/ipaddr/ipv4/IPv4AddressSection;Linet/ipaddr/ipv4/IPv4AddressSection;I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
