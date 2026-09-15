.class Lcom/getkeepsafe/taptargetview/TapTargetView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/taptargetview/FloatValueAnimatorBuilder$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/taptargetview/TapTargetView;)V
    .locals 0

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 8

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleRadius:F

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->calculateDrawingBounds()V

    :cond_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v5, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->target:Lcom/getkeepsafe/taptargetview/TapTarget;

    iget v5, v5, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    iput v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleRadius:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, p1

    mul-float v7, v1, v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleAlpha:I

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v5, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleCenter:[I

    aget v3, v7, v3

    int-to-float v3, v3

    aget v4, v7, v4

    int-to-float v4, v4

    iget v0, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v3, v4, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    mul-float v3, v1, v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCircleAlpha:I

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    if-eqz v2, :cond_2

    iget v3, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->TARGET_RADIUS:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCircleRadius:F

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->TARGET_RADIUS:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCircleRadius:F

    iget v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCirclePulseRadius:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCirclePulseRadius:F

    :goto_1
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, p1, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->delayedLerp(FF)F

    move-result p1

    mul-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, v0, Lcom/getkeepsafe/taptargetview/TapTargetView;->textAlpha:I

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-virtual {p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->calculateDrawingBounds()V

    :cond_3
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$1;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    return-void
.end method
