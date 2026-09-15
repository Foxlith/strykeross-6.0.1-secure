.class public final Ll3/j;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/textview/MaterialTextView;

.field public final b:Lcom/google/android/material/textview/MaterialTextView;

.field public final c:Lcom/google/android/material/textview/MaterialTextView;

.field public final d:Lcom/google/android/material/textview/MaterialTextView;

.field public final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a04ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Ll3/j;->a:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f0a04a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Ll3/j;->b:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f0a04b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Ll3/j;->c:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f0a04b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Ll3/j;->d:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f0a04aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ll3/j;->e:Landroid/view/View;

    return-void
.end method
