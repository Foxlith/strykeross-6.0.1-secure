.class public final Ld4/r;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final f:Lcom/google/android/material/button/MaterialButton;

.field public final g:Lcom/google/android/material/button/MaterialButton;

.field public final h:Landroid/widget/ImageView;

.field public final i:Lw5/h;

.field public final j:Lw5/h;

.field public final k:Lw5/h;

.field public final l:Lw5/h;

.field public final m:Lw5/h;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0626

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ld4/r;->a:Landroid/view/View;

    const v0, 0x7f0a0624

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a062f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld4/r;->b:Landroid/widget/TextView;

    const v0, 0x7f0a062e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld4/r;->c:Landroid/widget/TextView;

    const v0, 0x7f0a062d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld4/r;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0625

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object v0, p0, Ld4/r;->e:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const v0, 0x7f0a0623

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Ld4/r;->f:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0622

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Ld4/r;->g:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0621

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ld4/r;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a0627

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lw5/h;->a(Landroid/view/View;)Lw5/h;

    move-result-object v0

    iput-object v0, p0, Ld4/r;->i:Lw5/h;

    const v0, 0x7f0a0628

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lw5/h;->a(Landroid/view/View;)Lw5/h;

    move-result-object v0

    iput-object v0, p0, Ld4/r;->j:Lw5/h;

    const v0, 0x7f0a062b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lw5/h;->a(Landroid/view/View;)Lw5/h;

    move-result-object v0

    iput-object v0, p0, Ld4/r;->k:Lw5/h;

    const v0, 0x7f0a062a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lw5/h;->a(Landroid/view/View;)Lw5/h;

    move-result-object v0

    iput-object v0, p0, Ld4/r;->l:Lw5/h;

    const v0, 0x7f0a0629

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lw5/h;->a(Landroid/view/View;)Lw5/h;

    move-result-object p1

    iput-object p1, p0, Ld4/r;->m:Lw5/h;

    return-void
.end method
