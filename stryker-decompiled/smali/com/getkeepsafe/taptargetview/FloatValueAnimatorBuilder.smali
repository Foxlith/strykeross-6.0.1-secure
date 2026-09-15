.class Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;,
        Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;
    }
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

.field endListener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_0
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public build()Landroid/animation/ValueAnimator;
    .locals 2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->endListener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$2;

    invoke-direct {v1, p0}, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$2;-><init>(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public delayBy(J)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method public duration(J)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public onEnd(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->endListener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;

    return-object p0
.end method

.method public onUpdate(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
    .locals 2

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$1;

    invoke-direct {v1, p0, p1}, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$1;-><init>(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public repeat(I)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-object p0
.end method
