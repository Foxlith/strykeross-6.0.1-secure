.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private final delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawDebugCircle(Landroid/graphics/Canvas;IF)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDebugMode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    const/high16 v0, -0x10000

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F
    .locals 6

    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v4, p1

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result p1

    return p1
.end method

.method private invalidateRevealInfo()V
    .locals 5

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v3, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    xor-int/2addr v0, v2

    return v0
.end method

.method private shouldDrawOverlayDrawable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldDrawScrim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .locals 6

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    :cond_2
    return-void
.end method

.method public destroyCircularRevealCache()V
    .locals 2

    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v4, v0

    .line 37
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v5, v0

    .line 44
    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "Unsupported strategy "

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 74
    .line 75
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    int-to-float v5, v1

    .line 93
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    int-to-float v6, v1

    .line 100
    iget-object v7, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 101
    .line 102
    move-object v2, p1

    .line 103
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 111
    .line 112
    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 113
    .line 114
    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 115
    .line 116
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 117
    .line 118
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    .line 119
    .line 120
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 130
    .line 131
    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 132
    .line 133
    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 134
    .line 135
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 136
    .line 137
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 138
    .line 139
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 144
    .line 145
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    int-to-float v4, v0

    .line 163
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    int-to-float v5, v0

    .line 170
    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    .line 171
    .line 172
    move-object v1, p1

    .line 173
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v1, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result v0

    iput v0, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    :cond_1
    return-object v1
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    :goto_0
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    move-result p1

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/math/MathUtils;->geq(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    return-void
.end method
