.class public final synthetic Linet/ipaddr/mac/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/mac/MACAddressSection;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/mac/MACAddressSection;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/mac/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/mac/h;->b:Linet/ipaddr/mac/MACAddressSection;

    .line 7
    .line 8
    iput-boolean p2, p0, Linet/ipaddr/mac/h;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/mac/h;->a:I

    iget-boolean v1, p0, Linet/ipaddr/mac/h;->c:Z

    iget-object v2, p0, Linet/ipaddr/mac/h;->b:Linet/ipaddr/mac/MACAddressSection;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->w(Linet/ipaddr/mac/MACAddressSection;ZI)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v2, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->D(Linet/ipaddr/mac/MACAddressSection;ZI)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
