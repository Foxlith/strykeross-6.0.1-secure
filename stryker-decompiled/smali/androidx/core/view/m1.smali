.class public final synthetic Landroidx/core/view/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/core/view/m1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/core/view/m1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/core/view/m1;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/view/m1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/m1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/core/view/m1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-static {v1, v0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->a(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v1, Lf/q0;

    .line 19
    .line 20
    iget-object p1, v1, Lf/q0;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lf/y0;

    .line 23
    .line 24
    iget-object p1, p1, Lf/y0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
