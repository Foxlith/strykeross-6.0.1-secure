.class public final synthetic Linet/ipaddr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


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
    iput p2, p0, Linet/ipaddr/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/a;->b:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/a;->a:I

    iget-object v1, p0, Linet/ipaddr/a;->b:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createSectionArray(I)[Linet/ipaddr/IPAddressSection;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {v1, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createAddressArray(I)[Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
