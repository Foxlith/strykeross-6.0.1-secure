.class public final synthetic Linet/ipaddr/mac/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Linet/ipaddr/mac/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/mac/c;->b:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/mac/c;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    iput p3, p0, Linet/ipaddr/mac/c;->d:I

    .line 11
    .line 12
    iput p4, p0, Linet/ipaddr/mac/c;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Linet/ipaddr/mac/c;->a:I

    iget v1, p0, Linet/ipaddr/mac/c;->d:I

    iget-object v2, p0, Linet/ipaddr/mac/c;->c:Ljava/lang/Integer;

    iget-object v3, p0, Linet/ipaddr/mac/c;->b:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    iget v4, p0, Linet/ipaddr/mac/c;->e:I

    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;

    packed-switch v0, :pswitch_data_0

    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/mac/MACAddressSection;->Q(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/mac/MACAddressSection;->h(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/mac/MACAddressSection;->B(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/mac/MACAddressSection;->T(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/mac/MACAddressSection;->X(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

    :pswitch_4
    invoke-static {v3, v2, v1, v4, p1}, Linet/ipaddr/mac/MACAddressSection;->r(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p1

    return p1

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
