.class public final synthetic Linet/ipaddr/ipv4/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;


# direct methods
.method public synthetic constructor <init>(IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/b0;->a:I

    .line 5
    .line 6
    iput p1, p0, Linet/ipaddr/ipv4/b0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Linet/ipaddr/ipv4/b0;->d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    .line 9
    .line 10
    iput-object p4, p0, Linet/ipaddr/ipv4/b0;->c:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final applyAsInt(ZZII)Ljava/util/Iterator;
    .locals 9

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/b0;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/b0;->d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    packed-switch v0, :pswitch_data_0

    iget v2, p0, Linet/ipaddr/ipv4/b0;->b:I

    move-object v3, v1

    check-cast v3, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    iget-object v4, p0, Linet/ipaddr/ipv4/b0;->c:Ljava/lang/Integer;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Linet/ipaddr/ipv6/IPv6AddressSegment;->g(ILinet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget v0, p0, Linet/ipaddr/ipv4/b0;->b:I

    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    iget-object v2, p0, Linet/ipaddr/ipv4/b0;->c:Ljava/lang/Integer;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Linet/ipaddr/ipv4/IPv4AddressSegment;->g(ILinet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
