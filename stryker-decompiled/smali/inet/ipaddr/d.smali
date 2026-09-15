.class public final synthetic Linet/ipaddr/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/IPAddressSection$SegFunction;

.field public final synthetic c:Linet/ipaddr/IPAddressSection;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/d;->b:Linet/ipaddr/IPAddressSection$SegFunction;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/d;->c:Linet/ipaddr/IPAddressSection;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/d;->a:I

    iget-object v1, p0, Linet/ipaddr/d;->c:Linet/ipaddr/IPAddressSection;

    iget-object v2, p0, Linet/ipaddr/d;->b:Linet/ipaddr/IPAddressSection$SegFunction;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Linet/ipaddr/IPAddressSection;->h(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v2, v1, p1}, Linet/ipaddr/IPAddressSection;->t(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I

    move-result p1

    return p1

    :pswitch_1
    invoke-static {v2, v1, p1}, Linet/ipaddr/IPAddressSection;->v(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;I)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
