.class public final synthetic Linet/ipaddr/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/m;->a:I

    iget-object v1, p0, Linet/ipaddr/m;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v1, Ljava/util/Iterator;

    invoke-static {v1}, Linet/ipaddr/IPAddressSeqRange;->f(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v1, Ljava/util/Iterator;

    invoke-static {v1}, Linet/ipaddr/IPAddressSeqRange;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
