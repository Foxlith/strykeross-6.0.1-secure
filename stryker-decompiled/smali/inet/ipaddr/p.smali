.class public final synthetic Linet/ipaddr/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/p;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/p;->b:Ljava/io/Serializable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/p;->a:I

    iget-object v1, p0, Linet/ipaddr/p;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Linet/ipaddr/format/AddressDivisionGroupingBase;

    invoke-static {v1, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->a(Linet/ipaddr/format/AddressDivisionGroupingBase;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Linet/ipaddr/IPAddressSeqRange;->g(Ljava/util/ArrayList;I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
