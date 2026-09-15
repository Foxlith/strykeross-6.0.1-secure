.class Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;
.super Lcom/google/android/material/textfield/CutoutDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/CutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplApi14"
.end annotation


# instance fields
.field private cutoutPaint:Landroid/graphics/Paint;

.field private savedLayer:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/CutoutDrawable$CutoutDrawableState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/textfield/CutoutDrawable$CutoutDrawableState;Lcom/google/android/material/textfield/CutoutDrawable$1;)V

    return-void
.end method

.method private getCutoutPaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->cutoutPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private postDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->savedLayer:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method private preDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->saveCanvasLayer(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveCanvasLayer(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->savedLayer:I

    return-void
.end method

.method private useHardwareLayer(Landroid/graphics/drawable/Drawable$Callback;)Z
    .locals 0

    instance-of p1, p1, Landroid/view/View;

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->preDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->postDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawStrokeShape(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawStrokeShape(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/CutoutDrawable;->drawableState:Lcom/google/android/material/textfield/CutoutDrawable$CutoutDrawableState;

    invoke-static {v0}, Lcom/google/android/material/textfield/CutoutDrawable$CutoutDrawableState;->access$200(Lcom/google/android/material/textfield/CutoutDrawable$CutoutDrawableState;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/textfield/CutoutDrawable$ImplApi14;->getCutoutPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
