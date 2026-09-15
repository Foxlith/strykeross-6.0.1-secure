.class public final synthetic Linet/ipaddr/ipv4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/format/standard/AddressDivisionGrouping;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/format/standard/AddressDivisionGrouping;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/n;->b:Linet/ipaddr/format/standard/AddressDivisionGrouping;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/n;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/n;->b:Linet/ipaddr/format/standard/AddressDivisionGrouping;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Linet/ipaddr/mac/MACAddressSection;

    invoke-static {v1}, Linet/ipaddr/mac/MACAddressSection;->M(Linet/ipaddr/mac/MACAddressSection;)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->C(Linet/ipaddr/ipv4/IPv4AddressSection;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
