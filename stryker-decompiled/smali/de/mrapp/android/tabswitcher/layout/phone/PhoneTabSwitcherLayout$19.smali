.class Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->createRevertOvershootAnimationListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    iput-object p2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$view:Landroid/view/View;

    iput-object p3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$8500(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->DRAGGING_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$view:Landroid/view/View;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v3}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$8400(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$view:Landroid/view/View;

    sget-object v5, Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;->NONE:Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;

    invoke-interface {v3, v1, v4, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v0}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$8700(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v0

    sget-object v2, Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;->ORTHOGONAL_AXIS:Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$view:Landroid/view/View;

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->this$0:Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;

    invoke-static {v4}, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;->access$8600(Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout;)Lde/mrapp/android/tabswitcher/layout/Arithmetics;

    move-result-object v4

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$view:Landroid/view/View;

    invoke-interface {v4, v1, v6, v5}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->getPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;Lde/mrapp/android/tabswitcher/layout/AbstractDragHandler$DragState;)F

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lde/mrapp/android/tabswitcher/layout/Arithmetics;->setPivot(Lde/mrapp/android/tabswitcher/layout/Arithmetics$Axis;Landroid/view/View;F)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/layout/phone/PhoneTabSwitcherLayout$19;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
