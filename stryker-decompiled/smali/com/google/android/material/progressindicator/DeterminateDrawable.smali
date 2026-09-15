.class public final Lcom/google/android/material/progressindicator/DeterminateDrawable;
.super Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;"
    }
.end annotation


# static fields
.field private static final INDICATOR_LENGTH_IN_LEVEL:Landroidx/dynamicanimation/animation/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/j;"
        }
    .end annotation
.end field

.field private static final MAX_DRAWABLE_LEVEL:I = 0x2710

.field private static final SPRING_FORCE_STIFFNESS:F = 50.0f


# instance fields
.field private drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation
.end field

.field private indicatorFraction:F

.field private skipAnimationOnLevelChange:Z

.field private final springAnimation:Landroidx/dynamicanimation/animation/k;

.field private final springForce:Landroidx/dynamicanimation/animation/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable$1;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->INDICATOR_LENGTH_IN_LEVEL:Landroidx/dynamicanimation/animation/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setDrawingDelegate(Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Landroidx/dynamicanimation/animation/l;

    .line 11
    .line 12
    invoke-direct {p2}, Landroidx/dynamicanimation/animation/l;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springForce:Landroidx/dynamicanimation/animation/l;

    .line 16
    .line 17
    const/high16 p3, 0x3f800000    # 1.0f

    .line 18
    .line 19
    float-to-double v0, p3

    .line 20
    iput-wide v0, p2, Landroidx/dynamicanimation/animation/l;->b:D

    .line 21
    .line 22
    iput-boolean p1, p2, Landroidx/dynamicanimation/animation/l;->c:Z

    .line 23
    .line 24
    const/high16 v0, 0x42480000    # 50.0f

    .line 25
    .line 26
    float-to-double v0, v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p2, Landroidx/dynamicanimation/animation/l;->a:D

    .line 32
    .line 33
    iput-boolean p1, p2, Landroidx/dynamicanimation/animation/l;->c:Z

    .line 34
    .line 35
    new-instance p1, Landroidx/dynamicanimation/animation/k;

    .line 36
    .line 37
    sget-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->INDICATOR_LENGTH_IN_LEVEL:Landroidx/dynamicanimation/animation/j;

    .line 38
    .line 39
    invoke-direct {p1, p0, v0}, Landroidx/dynamicanimation/animation/k;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/j;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    .line 43
    .line 44
    iput-object p2, p1, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setGrowFraction(F)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/progressindicator/DeterminateDrawable;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getIndicatorFraction()F

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/material/progressindicator/DeterminateDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setIndicatorFraction(F)V

    return-void
.end method

.method public static createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    new-instance v1, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    return-object v0
.end method

.method public static createLinearDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    new-instance v1, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/LinearDrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Lcom/google/android/material/progressindicator/DrawingDelegate;)V

    return-object v0
.end method

.method private getIndicatorFraction()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->indicatorFraction:F

    return v0
.end method

.method private setIndicatorFraction(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->indicatorFraction:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public addSpringAnimationEndListener(Landroidx/dynamicanimation/animation/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/dynamicanimation/animation/k;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/material/progressindicator/DrawingDelegate;->validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v7

    iget-object v2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getIndicatorFraction()F

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/DrawingDelegate;->fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hideNow()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHiding()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/k;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setIndicatorFraction(F)V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    .line 2
    .line 3
    const v1, 0x461c4000    # 10000.0f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/k;->b()V

    .line 12
    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    div-float/2addr p1, v1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setIndicatorFraction(F)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getIndicatorFraction()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    mul-float/2addr v3, v1

    .line 28
    iput v3, v0, Landroidx/dynamicanimation/animation/k;->b:F

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/dynamicanimation/animation/k;->c:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/k;->f:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iput p1, v0, Landroidx/dynamicanimation/animation/k;->n:F

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v1, v0, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    new-instance v1, Landroidx/dynamicanimation/animation/l;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Landroidx/dynamicanimation/animation/l;-><init>(F)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 53
    .line 54
    :cond_2
    iget-object v1, v0, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 55
    .line 56
    float-to-double v3, p1

    .line 57
    iput-wide v3, v1, Landroidx/dynamicanimation/animation/l;->i:D

    .line 58
    .line 59
    double-to-float p1, v3

    .line 60
    float-to-double v3, p1

    .line 61
    iget p1, v0, Landroidx/dynamicanimation/animation/k;->g:F

    .line 62
    .line 63
    float-to-double v5, p1

    .line 64
    cmpl-double p1, v3, v5

    .line 65
    .line 66
    if-gtz p1, :cond_b

    .line 67
    .line 68
    iget p1, v0, Landroidx/dynamicanimation/animation/k;->h:F

    .line 69
    .line 70
    float-to-double v5, p1

    .line 71
    cmpg-double p1, v3, v5

    .line 72
    .line 73
    if-ltz p1, :cond_a

    .line 74
    .line 75
    iget p1, v0, Landroidx/dynamicanimation/animation/k;->j:F

    .line 76
    .line 77
    const/high16 v3, 0x3f400000    # 0.75f

    .line 78
    .line 79
    mul-float/2addr p1, v3

    .line 80
    float-to-double v3, p1

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    iput-wide v3, v1, Landroidx/dynamicanimation/animation/l;->d:D

    .line 86
    .line 87
    const-wide v5, 0x404f400000000000L    # 62.5

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    mul-double/2addr v3, v5

    .line 93
    iput-wide v3, v1, Landroidx/dynamicanimation/animation/l;->e:D

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-ne p1, v1, :cond_9

    .line 104
    .line 105
    iget-boolean p1, v0, Landroidx/dynamicanimation/animation/k;->f:Z

    .line 106
    .line 107
    if-nez p1, :cond_8

    .line 108
    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    iput-boolean v2, v0, Landroidx/dynamicanimation/animation/k;->f:Z

    .line 112
    .line 113
    iget-boolean p1, v0, Landroidx/dynamicanimation/animation/k;->c:Z

    .line 114
    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    iget-object p1, v0, Landroidx/dynamicanimation/animation/k;->e:Landroidx/dynamicanimation/animation/j;

    .line 118
    .line 119
    iget-object v1, v0, Landroidx/dynamicanimation/animation/k;->d:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/j;->getValue(Ljava/lang/Object;)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, v0, Landroidx/dynamicanimation/animation/k;->b:F

    .line 126
    .line 127
    :cond_3
    iget p1, v0, Landroidx/dynamicanimation/animation/k;->b:F

    .line 128
    .line 129
    iget v1, v0, Landroidx/dynamicanimation/animation/k;->g:F

    .line 130
    .line 131
    cmpl-float v1, p1, v1

    .line 132
    .line 133
    if-gtz v1, :cond_7

    .line 134
    .line 135
    iget v1, v0, Landroidx/dynamicanimation/animation/k;->h:F

    .line 136
    .line 137
    cmpg-float p1, p1, v1

    .line 138
    .line 139
    if-ltz p1, :cond_7

    .line 140
    .line 141
    sget-object p1, Landroidx/dynamicanimation/animation/d;->g:Ljava/lang/ThreadLocal;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_4

    .line 148
    .line 149
    new-instance v1, Landroidx/dynamicanimation/animation/d;

    .line 150
    .line 151
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/d;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroidx/dynamicanimation/animation/d;

    .line 162
    .line 163
    iget-object v1, p1, Landroidx/dynamicanimation/animation/d;->b:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_6

    .line 170
    .line 171
    iget-object v3, p1, Landroidx/dynamicanimation/animation/d;->d:Landroidx/dynamicanimation/animation/c;

    .line 172
    .line 173
    if-nez v3, :cond_5

    .line 174
    .line 175
    new-instance v3, Landroidx/dynamicanimation/animation/c;

    .line 176
    .line 177
    iget-object v4, p1, Landroidx/dynamicanimation/animation/d;->c:Lf/q0;

    .line 178
    .line 179
    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/c;-><init>(Lf/q0;)V

    .line 180
    .line 181
    .line 182
    iput-object v3, p1, Landroidx/dynamicanimation/animation/d;->d:Landroidx/dynamicanimation/animation/c;

    .line 183
    .line 184
    :cond_5
    iget-object p1, p1, Landroidx/dynamicanimation/animation/d;->d:Landroidx/dynamicanimation/animation/c;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/c;->c()V

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_8

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    const-string v0, "Starting value need to be in between min value and max value"

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_8
    :goto_0
    return v2

    .line 208
    :cond_9
    new-instance p1, Landroid/util/AndroidRuntimeException;

    .line 209
    .line 210
    const-string v0, "Animations may only be started on the main thread"

    .line 211
    .line 212
    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1

    .line 216
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 217
    .line 218
    const-string v0, "Final position of the spring cannot be less than the min value."

    .line 219
    .line 220
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 225
    .line 226
    const-string v0, "Final position of the spring cannot be greater than the max value."

    .line 227
    .line 228
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/c;)V

    return-void
.end method

.method public removeSpringAnimationEndListener(Landroidx/dynamicanimation/animation/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springAnimation:Landroidx/dynamicanimation/animation/k;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/dynamicanimation/animation/k;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDrawingDelegate(Lcom/google/android/material/progressindicator/DrawingDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->drawingDelegate:Lcom/google/android/material/progressindicator/DrawingDelegate;

    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->registerDrawable(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    return-void
.end method

.method public setLevelByFraction(F)V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVisible(ZZZ)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result p1

    return p1
.end method

.method public setVisibleInternal(ZZZ)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 6
    .line 7
    iget-object p3, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 p3, 0x0

    .line 18
    cmpl-float v0, p2, p3

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->skipAnimationOnLevelChange:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->springForce:Landroidx/dynamicanimation/animation/l;

    .line 30
    .line 31
    const/high16 v2, 0x42480000    # 50.0f

    .line 32
    .line 33
    div-float/2addr v2, p2

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    cmpg-float p2, v2, p3

    .line 38
    .line 39
    if-lez p2, :cond_1

    .line 40
    .line 41
    float-to-double p2, v2

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide p2

    .line 46
    iput-wide p2, v1, Landroidx/dynamicanimation/animation/l;->a:D

    .line 47
    .line 48
    iput-boolean v0, v1, Landroidx/dynamicanimation/animation/l;->c:Z

    .line 49
    .line 50
    :goto_0
    return p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "Spring stiffness constant must be positive."

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/c;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/c;)Z

    move-result p1

    return p1
.end method
