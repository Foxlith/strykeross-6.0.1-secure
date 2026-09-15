.class Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->onUpdate(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;)Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;

.field final synthetic val$listener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$1;->this$0:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$1;->val$listener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$1;->val$listener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;->onUpdate(F)V

    return-void
.end method
