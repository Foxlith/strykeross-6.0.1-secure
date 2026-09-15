.class public final synthetic Linet/ipaddr/format/validate/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;
.implements Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/format/validate/ParsedIPAddress;

.field public final synthetic c:I

.field public final synthetic d:Linet/ipaddr/format/validate/AddressParseData;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Linet/ipaddr/format/validate/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/validate/a;->b:Linet/ipaddr/format/validate/ParsedIPAddress;

    .line 7
    .line 8
    iput p2, p0, Linet/ipaddr/format/validate/a;->c:I

    .line 9
    .line 10
    iput-object p3, p0, Linet/ipaddr/format/validate/a;->d:Linet/ipaddr/format/validate/AddressParseData;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getLength(I)I
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/format/validate/a;->c:I

    iget-object v1, p0, Linet/ipaddr/format/validate/a;->d:Linet/ipaddr/format/validate/AddressParseData;

    iget-object v2, p0, Linet/ipaddr/format/validate/a;->b:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-static {v2, v0, v1, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->r(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)I

    move-result p1

    return p1
.end method

.method public final getValue(I)J
    .locals 4

    .line 1
    iget v0, p0, Linet/ipaddr/format/validate/a;->a:I

    iget-object v1, p0, Linet/ipaddr/format/validate/a;->b:Linet/ipaddr/format/validate/ParsedIPAddress;

    iget-object v2, p0, Linet/ipaddr/format/validate/a;->d:Linet/ipaddr/format/validate/AddressParseData;

    iget v3, p0, Linet/ipaddr/format/validate/a;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v3, v2, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->e(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-static {v1, v3, v2, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->l(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-static {v1, v3, v2, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->a(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_2
    invoke-static {v1, v3, v2, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->g(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J

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
