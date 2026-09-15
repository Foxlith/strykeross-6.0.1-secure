.class public final synthetic Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/internal/a;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->d(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->d(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->a(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->c(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->b(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->b(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/android/material/internal/MultiViewUpdateListener;->c(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
