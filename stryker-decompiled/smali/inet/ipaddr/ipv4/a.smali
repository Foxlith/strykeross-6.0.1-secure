.class public final synthetic Linet/ipaddr/ipv4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/Address$SegmentValueProvider;

.field public final synthetic c:Linet/ipaddr/Address$SegmentValueProvider;

.field public final synthetic d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/a;->b:Linet/ipaddr/Address$SegmentValueProvider;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/a;->c:Linet/ipaddr/Address$SegmentValueProvider;

    .line 9
    .line 10
    iput-object p4, p0, Linet/ipaddr/ipv4/a;->d:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/a;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/a;->c:Linet/ipaddr/Address$SegmentValueProvider;

    iget-object v2, p0, Linet/ipaddr/ipv4/a;->b:Linet/ipaddr/Address$SegmentValueProvider;

    iget-object v3, p0, Linet/ipaddr/ipv4/a;->d:Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, v3, p1}, Linet/ipaddr/ipv6/IPv6Address;->j(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v2, v1, v3, p1}, Linet/ipaddr/ipv4/IPv4Address;->e(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
