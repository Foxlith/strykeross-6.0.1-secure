.class public final synthetic Linet/ipaddr/ipv4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


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
    iput p1, p0, Linet/ipaddr/ipv4/k;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Linet/ipaddr/ipv4/k;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/k;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/k;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/k;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    iget-object v2, p0, Linet/ipaddr/ipv4/k;->c:Ljava/lang/Integer;

    check-cast p1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->G0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->q0(Linet/ipaddr/ipv4/IPv4AddressSection;Ljava/lang/Integer;[Linet/ipaddr/ipv4/IPv4AddressSegment;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
