.class public final synthetic Linet/ipaddr/ipv4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/t;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv4/t;->b:I

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/t;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/t;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/t;->b:I

    iget-object v2, p0, Linet/ipaddr/ipv4/t;->c:Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->B0(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->C0(ILjava/lang/Integer;Linet/ipaddr/ipv4/IPv4Address;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
