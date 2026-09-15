.class Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenEdgesCalibrationTool"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field img:Landroid/widget/ImageView;

.field p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$drawable;->calibrate:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    sget-object v2, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    int-to-float v5, v5

    const/4 v6, 0x3

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    sget-object p1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v1, v3, :cond_0

    aget v1, p1, v5

    if-ne v3, v1, :cond_0

    aget v3, p1, v4

    if-ne v1, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v0

    sget-object p1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v2

    sget-object p1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v5

    sget-object p1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, p1, v4

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget-object v1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    aget v3, v1, v0

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    aput p1, v1, v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget-object v1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    aget v3, v1, v2

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    aput p1, v1, v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget-object v1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    aget v3, v1, v5

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    aput p1, v1, v5

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget-object v1, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    aget v3, v1, v4

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    aput p1, v1, v4

    :cond_4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-direct {p2, v6, v6, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    sget-object v3, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    aget v0, v3, v0

    int-to-float v0, v0

    aget v6, v3, v2

    int-to-float v6, v6

    aget v5, v3, v5

    int-to-float v5, v5

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v0, v6, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;->img:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return v2
.end method
