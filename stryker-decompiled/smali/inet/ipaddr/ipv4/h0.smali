.class public final synthetic Linet/ipaddr/ipv4/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSeqRange$SegValueComparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Ljava/lang/Integer;

.field public final synthetic c:[I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Integer;[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/h0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/h0;->b:[Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/ipv4/h0;->c:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/h0;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/h0;->c:[I

    iget-object v2, p0, Linet/ipaddr/ipv4/h0;->b:[Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v2, v1, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->D([Ljava/lang/Integer;[ILinet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6Address;I)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-static {v2, v1, p1, p2, p3}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->w([Ljava/lang/Integer;[ILinet/ipaddr/ipv4/IPv4Address;Linet/ipaddr/ipv4/IPv4Address;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
