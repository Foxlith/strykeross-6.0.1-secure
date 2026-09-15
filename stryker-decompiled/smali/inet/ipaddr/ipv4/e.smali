.class public final synthetic Linet/ipaddr/ipv4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>([BIIILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Linet/ipaddr/ipv4/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/e;->b:[B

    .line 7
    .line 8
    iput p2, p0, Linet/ipaddr/ipv4/e;->c:I

    .line 9
    .line 10
    iput p3, p0, Linet/ipaddr/ipv4/e;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Linet/ipaddr/ipv4/e;->e:Ljava/lang/Integer;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/e;->a:I

    iget v1, p0, Linet/ipaddr/ipv4/e;->d:I

    iget v2, p0, Linet/ipaddr/ipv4/e;->c:I

    iget-object v3, p0, Linet/ipaddr/ipv4/e;->b:[B

    iget-object v4, p0, Linet/ipaddr/ipv4/e;->e:Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    packed-switch v0, :pswitch_data_0

    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/ipv6/IPv6Address;->g([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/ipv4/IPv4Address;->i([BIILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
