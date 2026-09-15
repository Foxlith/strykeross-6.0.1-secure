.class public final synthetic Linet/ipaddr/format/validate/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/Address$SegmentValueProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>([II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/format/validate/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/validate/e;->b:[I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getValue(I)I
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/format/validate/e;->a:I

    iget-object v1, p0, Linet/ipaddr/format/validate/e;->b:[I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->k(I[I)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->p(I[I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
