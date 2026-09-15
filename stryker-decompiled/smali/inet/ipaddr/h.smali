.class public final synthetic Linet/ipaddr/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/Address$SegmentValueProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Linet/ipaddr/IPAddressSegment;


# direct methods
.method public synthetic constructor <init>([Linet/ipaddr/IPAddressSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/h;->b:[Linet/ipaddr/IPAddressSegment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getValue(I)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/h;->a:I

    iget-object v1, p0, Linet/ipaddr/h;->b:[Linet/ipaddr/IPAddressSegment;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Linet/ipaddr/IPAddressSection;->p([Linet/ipaddr/IPAddressSegment;I)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v1, p1}, Linet/ipaddr/IPAddressSection;->i([Linet/ipaddr/IPAddressSegment;I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
