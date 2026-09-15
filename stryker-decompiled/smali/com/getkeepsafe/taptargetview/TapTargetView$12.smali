.class Lcom/getkeepsafe/taptargetview/TapTargetView$12;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/TapTargetView;->applyTargetOptions(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget-object v0, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v3, v2

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleRadius:F

    sub-float/2addr v3, p1

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v4, v0

    sub-float/2addr v4, p1

    float-to-int v4, v4

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p2, v3, v4, v2, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->outerCircleAlpha:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/TapTargetView$12;->this$0:Lcom/getkeepsafe/taptargetview/TapTargetView;

    iget p1, p1, Lcom/getkeepsafe/taptargetview/TapTargetView;->SHADOW_DIM:I

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->offset(II)V

    return-void
.end method
