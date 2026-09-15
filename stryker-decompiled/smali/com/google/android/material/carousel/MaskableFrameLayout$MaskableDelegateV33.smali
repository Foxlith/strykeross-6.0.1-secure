.class Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;
.super Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/carousel/MaskableFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaskableDelegateV33"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;-><init>(Lcom/google/android/material/carousel/MaskableFrameLayout$1;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;->initMaskOutlineProvider(Landroid/view/View;)V

    return-void
.end method

.method private initMaskOutlineProvider(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33$1;-><init>(Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public invalidateClippingMethod(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;->shouldUseCompatClipping()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegateV33;->shouldUseCompatClipping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    :goto_0
    return-void
.end method

.method public shouldUseCompatClipping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout$MaskableDelegate;->forceCompatClippingEnabled:Z

    return v0
.end method
