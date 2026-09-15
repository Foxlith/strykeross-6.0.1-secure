.class public final synthetic Linet/ipaddr/ipv4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


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
    iput p1, p0, Linet/ipaddr/ipv4/l;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/ipv4/l;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/l;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/l;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->Z(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->x0(Linet/ipaddr/ipv4/IPv4AddressSection;)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->segmentsNonZeroHostIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
