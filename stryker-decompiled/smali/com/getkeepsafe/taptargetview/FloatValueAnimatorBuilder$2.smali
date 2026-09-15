.class Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$2;->this$0:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$2;->this$0:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder;->endListener:Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;

    invoke-interface {p1}, Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$EndListener;->onEnd()V

    return-void
.end method
