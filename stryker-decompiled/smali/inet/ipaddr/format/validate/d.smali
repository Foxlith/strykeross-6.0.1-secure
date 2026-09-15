.class public final synthetic Linet/ipaddr/format/validate/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/Address$SegmentValueProvider;
.implements Landroidx/core/view/a0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(III[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Linet/ipaddr/format/validate/d;->a:I

    iput p1, p0, Linet/ipaddr/format/validate/d;->b:I

    iput p2, p0, Linet/ipaddr/format/validate/d;->c:I

    iput-object p4, p0, Linet/ipaddr/format/validate/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Linet/ipaddr/format/validate/d;->a:I

    iput-object p1, p0, Linet/ipaddr/format/validate/d;->d:Ljava/lang/Object;

    iput p2, p0, Linet/ipaddr/format/validate/d;->b:I

    iput p3, p0, Linet/ipaddr/format/validate/d;->c:I

    return-void
.end method


# virtual methods
.method public final getValue(I)I
    .locals 4

    .line 1
    iget v0, p0, Linet/ipaddr/format/validate/d;->a:I

    iget v1, p0, Linet/ipaddr/format/validate/d;->c:I

    iget v2, p0, Linet/ipaddr/format/validate/d;->b:I

    iget-object v3, p0, Linet/ipaddr/format/validate/d;->d:Ljava/lang/Object;

    check-cast v3, [I

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->d(III[I)I

    move-result p1

    return p1

    :pswitch_0
    invoke-static {v2, v1, p1, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->m(III[I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 3

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/validate/d;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Linet/ipaddr/format/validate/d;->b:I

    iget v2, p0, Linet/ipaddr/format/validate/d;->c:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/material/search/SearchView;->j(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    move-result-object p1

    return-object p1
.end method
