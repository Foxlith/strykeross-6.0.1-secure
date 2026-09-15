.class public final synthetic Linet/ipaddr/ipv4/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSection$SegFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/i0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/i0;->b:[Ljava/lang/Integer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/i0;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/i0;->b:[Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv6/IPv6AddressSeqRange;->p([Ljava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressSegment;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Linet/ipaddr/ipv4/IPv4AddressSegment;

    invoke-static {v1, p1, p2}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->t([Ljava/lang/Integer;Linet/ipaddr/ipv4/IPv4AddressSegment;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
