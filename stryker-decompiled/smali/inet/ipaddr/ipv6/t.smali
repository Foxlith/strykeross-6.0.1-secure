.class public final synthetic Linet/ipaddr/ipv6/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv6/IPv6AddressSegment;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv6/t;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv6/t;->b:Linet/ipaddr/ipv6/IPv6AddressSegment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/t;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv6/t;->b:Linet/ipaddr/ipv6/IPv6AddressSegment;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressSegment;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
