.class public final Landroidx/core/view/n1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/core/view/n1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/view/n1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/view/n1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/core/view/n1;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Landroidx/core/view/n1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/core/view/q1;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/view/n1;->b:Landroid/view/View;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Landroidx/core/view/q1;->a(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/core/view/n1;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/view/n1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/core/view/d2;

    .line 9
    .line 10
    iget-object p1, v0, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroidx/core/view/c2;->d(F)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/core/view/n1;->b:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/core/view/y1;->e(Landroid/view/View;Landroidx/core/view/d2;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast v0, Landroidx/core/view/q1;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/core/view/q1;->onAnimationEnd()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/n1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Landroidx/core/view/n1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/core/view/q1;

    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/core/view/q1;->b()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
