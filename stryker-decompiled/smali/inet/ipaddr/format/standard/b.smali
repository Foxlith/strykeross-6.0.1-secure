.class public final synthetic Linet/ipaddr/format/standard/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


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
    iput p1, p0, Linet/ipaddr/format/standard/b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Linet/ipaddr/format/standard/b;->b:Ljava/io/Serializable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/format/standard/b;->a:I

    iget-object v1, p0, Linet/ipaddr/format/standard/b;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;->a([Ljava/lang/String;I)I

    move-result p1

    return p1

    :pswitch_0
    check-cast v1, Linet/ipaddr/AddressSection;

    invoke-static {v1, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->f(Linet/ipaddr/AddressSection;I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
