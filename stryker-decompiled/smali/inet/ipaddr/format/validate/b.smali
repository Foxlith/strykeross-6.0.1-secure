.class public final synthetic Linet/ipaddr/format/validate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/format/validate/AddressParseData;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/format/validate/AddressParseData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/format/validate/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/validate/b;->b:Linet/ipaddr/format/validate/AddressParseData;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getLength(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/validate/b;->b:Linet/ipaddr/format/validate/AddressParseData;

    invoke-static {v0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->h(Linet/ipaddr/format/validate/AddressParseData;I)I

    move-result p1

    return p1
.end method

.method public final getValue(I)J
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/format/validate/b;->a:I

    iget-object v1, p0, Linet/ipaddr/format/validate/b;->b:Linet/ipaddr/format/validate/AddressParseData;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->f(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-static {v1, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->n(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-static {v1, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->t(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_2
    invoke-static {v1, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->i(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
