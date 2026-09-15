.class Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;->initMaskOutlineProvider(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22$1;->this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    iget-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22$1;->this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;

    iget-object v0, p1, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22$1;->this$0:Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;

    iget-object v0, p1, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;->maskBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v1

    iget-object v1, p1, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {p1, v1, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;->access$200(Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV22;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)F

    move-result v7

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method
