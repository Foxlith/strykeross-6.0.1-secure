.class public final Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFab;->manualIconAnimation(JFFLj5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $currentRotationDegrees$inlined:Lkotlin/jvm/internal/m;

.field final synthetic $degreesPerUpdate$inlined:F

.field final synthetic $endRotationDegrees$inlined:F

.field final synthetic $epsilon$inlined:D

.field final synthetic $matrix$inlined:Landroid/graphics/Matrix;

.field final synthetic $onAnimationFinished$inlined:Lj5/a;

.field final synthetic this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m;FFLcom/nambimobile/widgets/efab/ExpandableFab;DLandroid/graphics/Matrix;Lj5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$currentRotationDegrees$inlined:Lkotlin/jvm/internal/m;

    iput p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$endRotationDegrees$inlined:F

    iput p3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$degreesPerUpdate$inlined:F

    iput-object p4, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iput-wide p5, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$epsilon$inlined:D

    iput-object p7, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$matrix$inlined:Landroid/graphics/Matrix;

    iput-object p8, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$onAnimationFinished$inlined:Lj5/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$currentRotationDegrees$inlined:Lkotlin/jvm/internal/m;

    iget v1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$endRotationDegrees$inlined:F

    iget v2, v0, Lkotlin/jvm/internal/m;->a:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    iget v3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$degreesPerUpdate$inlined:F

    add-float/2addr v2, v3

    iput v2, v0, Lkotlin/jvm/internal/m;->a:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$degreesPerUpdate$inlined:F

    sub-float/2addr v2, v3

    iput v2, v0, Lkotlin/jvm/internal/m;->a:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_0
    iput v1, v0, Lkotlin/jvm/internal/m;->a:F

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    new-instance v1, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;

    iget-object v2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$matrix$inlined:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$currentRotationDegrees$inlined:Lkotlin/jvm/internal/m;

    invoke-direct {v1, v0, v2, v3}, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/graphics/Matrix;Lkotlin/jvm/internal/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$endRotationDegrees$inlined:F

    iget-object v1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$currentRotationDegrees$inlined:Lkotlin/jvm/internal/m;

    iget v1, v1, Lkotlin/jvm/internal/m;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$epsilon$inlined:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    new-instance v1, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$2;

    iget-object v2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;->$onAnimationFinished$inlined:Lj5/a;

    invoke-direct {v1, v2}, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$2;-><init>(Lj5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
