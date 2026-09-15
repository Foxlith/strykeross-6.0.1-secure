.class public final synthetic Linet/ipaddr/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/IPAddressSection$SeriesCreator;
.implements Linet/ipaddr/IPAddressSection$TriFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/b;->b:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSegmentSeries;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/b;->a:I

    iget-object v1, p0, Linet/ipaddr/b;->b:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockSection(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {v1, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockAddress(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {v1, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSequentialBlockAddress(Linet/ipaddr/IPAddressSegmentSeries;III)Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    check-cast p1, Linet/ipaddr/IPAddressSection;

    check-cast p2, Linet/ipaddr/IPAddressSection;

    check-cast p3, Linet/ipaddr/IPAddressSection;

    iget-object v0, p0, Linet/ipaddr/b;->b:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    invoke-static {v0, p1, p2, p3}, Linet/ipaddr/IPAddressSection;->u(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
