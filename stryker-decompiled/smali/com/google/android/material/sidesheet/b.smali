.class public final synthetic Lcom/google/android/material/sidesheet/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/w;
.implements Linet/ipaddr/Address$SegmentValueProvider;
.implements Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;
.implements Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;
.implements Landroidx/activity/result/b;
.implements Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/sidesheet/b;->a:I

    iput-object p2, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/material/sidesheet/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/sidesheet/b;->a:I

    iget-object v1, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/zalexdev/stryker/wpair/WpairFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/result/a;

    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->v(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroidx/activity/result/a;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->I(Lcom/zalexdev/stryker/wpair/WpairFragment;Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public applyAsInt(ZZII)Ljava/util/Iterator;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/sidesheet/b;->a:I

    iget-object v1, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast v1, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSegment;->d(ILinet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;ZZII)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/google/android/material/sidesheet/b;->a:I

    invoke-static {v1, p1, v0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->a(II[B)I

    move-result p1

    return p1
.end method

.method public onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->G(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V

    return-void
.end method

.method public onFound(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    invoke-static {v0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->r(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onResult(Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;

    invoke-static {v0, p1}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->a(Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method

.method public perform(Landroid/view/View;Lh0/o;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/material/sidesheet/b;->b:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p0, Lcom/google/android/material/sidesheet/b;->a:I

    invoke-static {p2, v0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->b(Lcom/google/android/material/sidesheet/SideSheetBehavior;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
