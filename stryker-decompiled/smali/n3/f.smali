.class public final Ln3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic c:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic d:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic e:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Lcom/zalexdev/stryker/utils/NoNestedScrollView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Lcom/google/android/material/card/MaterialCardView;

.field public final synthetic k:Landroid/content/Context;


# direct methods
.method public constructor <init>([ZLcom/facebook/shimmer/ShimmerFrameLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zalexdev/stryker/utils/NoNestedScrollView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/f;->a:[Z

    iput-object p2, p0, Ln3/f;->b:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p3, p0, Ln3/f;->c:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p4, p0, Ln3/f;->d:Lcom/google/android/material/button/MaterialButton;

    iput-object p5, p0, Ln3/f;->e:Lcom/google/android/material/button/MaterialButton;

    iput-object p6, p0, Ln3/f;->f:Landroid/widget/TextView;

    iput-object p7, p0, Ln3/f;->g:Landroid/widget/TextView;

    iput-object p8, p0, Ln3/f;->h:Lcom/zalexdev/stryker/utils/NoNestedScrollView;

    iput-object p9, p0, Ln3/f;->i:Landroid/widget/TextView;

    iput-object p10, p0, Ln3/f;->j:Lcom/google/android/material/card/MaterialCardView;

    iput-object p11, p0, Ln3/f;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ln3/k;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Ln3/f;->f:Landroid/widget/TextView;

    iget-object v1, p0, Ln3/f;->d:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Ln3/f;->b:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iget-object v3, p0, Ln3/f;->a:[Z

    iget-object v4, p0, Ln3/f;->c:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iget-object v5, p0, Ln3/f;->e:Lcom/google/android/material/button/MaterialButton;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_1

    const/4 v8, 0x2

    if-eq p1, v8, :cond_0

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    const/4 v8, 0x4

    if-eq p1, v8, :cond_0

    const/4 v8, 0x5

    if-eq p1, v8, :cond_0

    goto :goto_1

    :cond_0
    aput-boolean v7, v3, v7

    invoke-virtual {v2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    const/16 p1, 0x8

    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v5, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    aput-boolean v6, v3, v7

    invoke-virtual {v2, v6}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x3f19999a    # 0.6f

    goto :goto_0

    :goto_1
    return-void
.end method
