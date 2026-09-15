.class Lcom/getkeepsafe/taptargetview/TapTargetView$4;
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

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 6

    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->delayedLerp(FF)F

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v0, v2

    iget v4, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->TARGET_RADIUS:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    iput v3, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCirclePulseRadius:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCirclePulseAlpha:I

    int-to-float v0, v4

    invoke-virtual {v1, p1}, Lcom/getkeepsafe/taptargetview/TapTargetView;->halfwayLerp(F)F

    move-result p1

    iget-object v2, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget v3, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->TARGET_PULSE_RADIUS:I

    int-to-float v3, v3

    mul-float/2addr p1, v3

    add-float/2addr p1, v0

    iput p1, v1, Lcom/getkeepsafe/taptargetview/TapTargetView;->targetCircleRadius:F

    iget p1, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleRadius:F

    iget v0, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->calculatedOuterCircleRadius:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    int-to-float p1, v0

    iput p1, v2, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleRadius:F

    :cond_0
    invoke-virtual {v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->calculateDrawingBounds()V

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$4;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->invalidateViewAndOutline(Landroid/graphics/Rect;)V

    return-void
.end method
