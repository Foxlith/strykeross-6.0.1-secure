.class final Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VH"
.end annotation


# instance fields
.field final address:Landroid/widget/TextView;

.field final magic:Lcom/google/android/material/button/MaterialButton;

.field final model:Landroid/widget/TextView;

.field final more:Lcom/google/android/material/button/MaterialButton;

.field final name:Landroid/widget/TextView;

.field final pairingBadge:Landroid/widget/TextView;

.field final progress:Landroid/widget/TextView;

.field final rssi:Landroid/widget/TextView;

.field final status:Landroid/widget/TextView;

.field final test:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->name:Landroid/widget/TextView;

    const v0, 0x7f0a072b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->address:Landroid/widget/TextView;

    const v0, 0x7f0a0730

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->rssi:Landroid/widget/TextView;

    const v0, 0x7f0a072d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->model:Landroid/widget/TextView;

    const v0, 0x7f0a0731

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->status:Landroid/widget/TextView;

    const v0, 0x7f0a072f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->progress:Landroid/widget/TextView;

    const v0, 0x7f0a072c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->pairingBadge:Landroid/widget/TextView;

    const v0, 0x7f0a0729

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->test:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0727

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->magic:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0728

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->more:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method
