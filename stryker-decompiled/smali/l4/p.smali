.class public final synthetic Ll4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/utils/VmRingView;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/utils/VmRingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll4/p;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll4/p;->b:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Ll4/p;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ll4/p;->b:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/zalexdev/stryker/utils/VmRingView;->B:I

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, v1, Lcom/zalexdev/stryker/utils/VmRingView;->u:F

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/utils/VmRingView;->B:I

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Float;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, v1, Lcom/zalexdev/stryker/utils/VmRingView;->v:F

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
