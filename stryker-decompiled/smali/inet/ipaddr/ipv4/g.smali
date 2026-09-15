.class public final synthetic Linet/ipaddr/ipv4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/AddressComparator;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/AddressComparator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/g;->b:Linet/ipaddr/AddressComparator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/g;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/g;->b:Linet/ipaddr/AddressComparator;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    check-cast p2, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Linet/ipaddr/ipv6/IPv6Address;

    check-cast p2, Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSection;

    check-cast p2, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;)I

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Linet/ipaddr/ipv4/IPv4Address;

    check-cast p2, Linet/ipaddr/ipv4/IPv4Address;

    invoke-virtual {v1, p1, p2}, Linet/ipaddr/AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
