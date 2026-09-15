.class final Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation


# instance fields
.field final delete:Lcom/google/android/material/button/MaterialButton;

.field final meta:Landroid/widget/TextView;

.field final name:Landroid/widget/TextView;

.field final play:Lcom/google/android/material/button/MaterialButton;

.field final share:Lcom/google/android/material/button/MaterialButton;

.field final synthetic this$1:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->this$1:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a074b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->name:Landroid/widget/TextView;

    const p1, 0x7f0a074a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->meta:Landroid/widget/TextView;

    const p1, 0x7f0a074c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->play:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a074e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->share:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a0749

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter$VH;->delete:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method
