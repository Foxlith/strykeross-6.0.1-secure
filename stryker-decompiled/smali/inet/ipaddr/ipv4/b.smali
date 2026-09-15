.class public final synthetic Linet/ipaddr/ipv4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>([BILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/ipv4/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/b;->b:[B

    .line 7
    .line 8
    iput-object p3, p0, Linet/ipaddr/ipv4/b;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/b;->a:I

    iget-object v1, p0, Linet/ipaddr/ipv4/b;->b:[B

    iget-object v2, p0, Linet/ipaddr/ipv4/b;->c:Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv6/IPv6Address;->f([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, v2, p1}, Linet/ipaddr/ipv4/IPv4Address;->j([BLjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
