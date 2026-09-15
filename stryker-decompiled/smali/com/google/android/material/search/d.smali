.class public final synthetic Lcom/google/android/material/search/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/search/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/search/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/search/d;->a:I

    iget-object v1, p0, Lcom/google/android/material/search/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lg/d;

    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->a(Lg/d;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->d(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/view/View;

    invoke-static {p1, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->a(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
