.class public final synthetic Linet/ipaddr/ipv4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/ipv4/IPv4AddressSection;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/ipv4/z;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/ipv4/z;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    .line 7
    .line 8
    iput-boolean p2, p0, Linet/ipaddr/ipv4/z;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv4/z;->a:I

    iget-boolean v1, p0, Linet/ipaddr/ipv4/z;->c:Z

    iget-object v2, p0, Linet/ipaddr/ipv4/z;->b:Linet/ipaddr/ipv4/IPv4AddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->y0(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->V(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->R0(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->T(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->K0(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {v2, v1, p1}, Linet/ipaddr/ipv4/IPv4AddressSection;->M(Linet/ipaddr/ipv4/IPv4AddressSection;ZI)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
