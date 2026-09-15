.class final Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransitionDrawable"
.end annotation


# static fields
.field private static final COMPAT_SHADOW_COLOR:I = -0x777778

.field private static final SHADOW_COLOR:I = 0x2d000000

.field private static final SHADOW_DX_MULTIPLIER_ADJUSTMENT:F = 0.3f

.field private static final SHADOW_DY_MULTIPLIER_ADJUSTMENT:F = 1.5f


# instance fields
.field private final compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final containerPaint:Landroid/graphics/Paint;

.field private currentElevation:F

.field private currentElevationDy:F

.field private final currentEndBounds:Landroid/graphics/RectF;

.field private final currentEndBoundsMasked:Landroid/graphics/RectF;

.field private currentMaskBounds:Landroid/graphics/RectF;

.field private final currentStartBounds:Landroid/graphics/RectF;

.field private final currentStartBoundsMasked:Landroid/graphics/RectF;

.field private final debugPaint:Landroid/graphics/Paint;

.field private final debugPath:Landroid/graphics/Path;

.field private final displayHeight:F

.field private final displayWidth:F

.field private final drawDebugEnabled:Z

.field private final elevationShadowEnabled:Z

.field private final endBounds:Landroid/graphics/RectF;

.field private final endContainerPaint:Landroid/graphics/Paint;

.field private final endElevation:F

.field private final endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final endView:Landroid/view/View;

.field private final entering:Z

.field private final fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

.field private final fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

.field private fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

.field private final maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

.field private final motionPathLength:F

.field private final motionPathMeasure:Landroid/graphics/PathMeasure;

.field private final motionPathPosition:[F

.field private progress:F

.field private final progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final startBounds:Landroid/graphics/RectF;

.field private final startContainerPaint:Landroid/graphics/Paint;

.field private final startElevation:F

.field private final startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final startView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    new-instance v6, Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-direct {v6}, Lcom/google/android/material/transition/platform/MaskEvaluator;-><init>()V

    iput-object v6, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    iput-object v7, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    move-object v10, p2

    iput-object v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    iput-object v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v11, p5

    iput v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    move-object/from16 v11, p6

    iput-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    move-object/from16 v11, p7

    iput-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    move-object/from16 v12, p8

    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    move/from16 v12, p9

    iput v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    move/from16 v12, p14

    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->entering:Z

    move/from16 v12, p15

    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    move-object/from16 v12, p16

    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    move-object/from16 v12, p17

    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    move-object/from16 v12, p18

    iput-object v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    move/from16 v12, p19

    iput-boolean v12, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "window"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    iget v10, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iput v10, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    move/from16 v10, p10

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p11

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p12

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v8, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    invoke-virtual {v8, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    const v3, -0x777778

    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    invoke-static/range {p3 .. p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v10, p1

    invoke-virtual {p1, v6, v3, v8, v4}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v4, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iput v3, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v7, v2

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static/range {p13 .. p13}, Lcom/google/android/material/transition/platform/TransitionUtils;->createColorShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p19}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->setProgress(F)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    return-object p0
.end method

.method private static calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr p0, p1

    return p0
.end method

.method private static calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    div-float/2addr p0, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p0, p1

    return p0
.end method

.method private drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .locals 2

    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p2

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawElevationShadow(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getPath()Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v1}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v0}, Lcom/google/android/material/transition/platform/MaskEvaluator;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawEndView(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v5, v0, Lcom/google/android/material/transition/platform/FitModeResult;->endScale:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget v6, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    return-void
.end method

.method private drawStartView(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    iget v5, v0, Lcom/google/android/material/transition/platform/FitModeResult;->startScale:F

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget v6, v0, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;

    invoke-direct {v7, p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/platform/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V

    return-void
.end method

.method private static getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    :cond_0
    return-void
.end method

.method private updateProgress(F)V
    .locals 12

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progress:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->entering:Z

    .line 6
    .line 7
    const/high16 v2, 0x437f0000    # 255.0f

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {v8, v2, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v2, v8, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    float-to-int v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    .line 26
    .line 27
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    .line 28
    .line 29
    mul-float/2addr v1, p1

    .line 30
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    aget v2, v0, v1

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    aget v5, v0, v4

    .line 43
    .line 44
    const/high16 v9, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpl-float v6, p1, v9

    .line 47
    .line 48
    if-gtz v6, :cond_2

    .line 49
    .line 50
    cmpg-float v7, p1, v8

    .line 51
    .line 52
    if-gez v7, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    move v10, v2

    .line 56
    move v11, v5

    .line 57
    goto :goto_4

    .line 58
    :cond_2
    :goto_2
    if-lez v6, :cond_3

    .line 59
    .line 60
    sub-float v6, p1, v9

    .line 61
    .line 62
    const v7, 0x3c23d700    # 0.00999999f

    .line 63
    .line 64
    .line 65
    div-float/2addr v6, v7

    .line 66
    const v7, 0x3f7d70a4    # 0.99f

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const v7, 0x3c23d70a    # 0.01f

    .line 71
    .line 72
    .line 73
    div-float v6, p1, v7

    .line 74
    .line 75
    const/high16 v10, -0x40800000    # -1.0f

    .line 76
    .line 77
    mul-float/2addr v6, v10

    .line 78
    :goto_3
    iget-object v10, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    .line 79
    .line 80
    iget v11, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    .line 81
    .line 82
    mul-float/2addr v11, v7

    .line 83
    invoke-virtual {v10, v11, v0, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    .line 87
    .line 88
    aget v1, v0, v1

    .line 89
    .line 90
    aget v0, v0, v4

    .line 91
    .line 92
    invoke-static {v2, v1, v6, v2}, Landroid/support/v4/media/session/a;->e(FFFF)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v5, v0, v6, v5}, Landroid/support/v4/media/session/a;->e(FFFF)F

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    goto :goto_1

    .line 101
    :goto_4
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 144
    .line 145
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    move v1, p1

    .line 170
    invoke-interface/range {v0 .. v7}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 177
    .line 178
    iget v2, v0, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    .line 179
    .line 180
    const/high16 v3, 0x40000000    # 2.0f

    .line 181
    .line 182
    div-float v4, v2, v3

    .line 183
    .line 184
    sub-float v4, v10, v4

    .line 185
    .line 186
    div-float/2addr v2, v3

    .line 187
    add-float/2addr v2, v10

    .line 188
    iget v0, v0, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    .line 189
    .line 190
    add-float/2addr v0, v11

    .line 191
    invoke-virtual {v1, v4, v11, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 197
    .line 198
    iget v2, v1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    .line 199
    .line 200
    div-float v4, v2, v3

    .line 201
    .line 202
    sub-float v4, v10, v4

    .line 203
    .line 204
    div-float/2addr v2, v3

    .line 205
    add-float/2addr v2, v10

    .line 206
    iget v1, v1, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    .line 207
    .line 208
    add-float/2addr v1, v11

    .line 209
    invoke-virtual {v0, v4, v11, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 227
    .line 228
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 248
    .line 249
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 269
    .line 270
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 271
    .line 272
    invoke-interface {v2, v3}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_4

    .line 277
    .line 278
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 282
    .line 283
    :goto_5
    invoke-static {v8, v9, v0, v1, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v2, :cond_5

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_5
    sub-float v0, v9, v0

    .line 291
    .line 292
    :goto_6
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/platform/FitModeEvaluator;

    .line 293
    .line 294
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/platform/FitModeResult;

    .line 295
    .line 296
    invoke-interface {v1, v3, v0, v2}, Lcom/google/android/material/transition/platform/FitModeEvaluator;->applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Landroid/graphics/RectF;

    .line 300
    .line 301
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 302
    .line 303
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 304
    .line 305
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 306
    .line 307
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 308
    .line 309
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 314
    .line 315
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 316
    .line 317
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 318
    .line 319
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 320
    .line 321
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 326
    .line 327
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 328
    .line 329
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 330
    .line 331
    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 332
    .line 333
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 338
    .line 339
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 340
    .line 341
    iget-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 342
    .line 343
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 344
    .line 345
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    .line 351
    .line 352
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 353
    .line 354
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    .line 355
    .line 356
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 357
    .line 358
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 359
    .line 360
    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    .line 361
    .line 362
    iget-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    .line 363
    .line 364
    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    .line 365
    .line 366
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 367
    .line 368
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    move v1, p1

    .line 373
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/transition/platform/MaskEvaluator;->evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 374
    .line 375
    .line 376
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    .line 377
    .line 378
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    .line 379
    .line 380
    invoke-static {v0, v1, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 385
    .line 386
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 387
    .line 388
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    .line 389
    .line 390
    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    .line 395
    .line 396
    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    .line 397
    .line 398
    invoke-static {v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    iget v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    .line 403
    .line 404
    mul-float/2addr v0, v2

    .line 405
    float-to-int v0, v0

    .line 406
    int-to-float v0, v0

    .line 407
    mul-float/2addr v1, v2

    .line 408
    float-to-int v1, v1

    .line 409
    int-to-float v1, v1

    .line 410
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    .line 411
    .line 412
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 413
    .line 414
    const/high16 v4, 0x2d000000

    .line 415
    .line 416
    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 417
    .line 418
    .line 419
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 420
    .line 421
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 441
    .line 442
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 462
    .line 463
    const v3, 0x3eb33333    # 0.35f

    .line 464
    .line 465
    .line 466
    invoke-interface {v2, p1, v0, v1, v3}, Lcom/google/android/material/transition/platform/FadeModeEvaluator;->evaluate(FFFF)Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 471
    .line 472
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 473
    .line 474
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-eqz v0, :cond_6

    .line 479
    .line 480
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    .line 481
    .line 482
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 483
    .line 484
    iget v1, v1, Lcom/google/android/material/transition/platform/FadeModeResult;->startAlpha:I

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 487
    .line 488
    .line 489
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 490
    .line 491
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_7

    .line 496
    .line 497
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    .line 498
    .line 499
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 500
    .line 501
    iget v1, v1, Lcom/google/android/material/transition/platform/FadeModeResult;->endAlpha:I

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 504
    .line 505
    .line 506
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 507
    .line 508
    .line 509
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawElevationShadow(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/platform/MaskEvaluator;

    invoke-virtual {v1, p1}, Lcom/google/android/material/transition/platform/MaskEvaluator;->clip(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/platform/FadeModeResult;

    iget-boolean v1, v1, Lcom/google/android/material/transition/platform/FadeModeResult;->endOnTop:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    const v2, -0xff01

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    const/16 v1, -0x100

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    const v1, -0xff0100

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    const v1, -0xff0001

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    const v1, -0xffff01

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    :cond_4
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting alpha on is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a color filter is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
