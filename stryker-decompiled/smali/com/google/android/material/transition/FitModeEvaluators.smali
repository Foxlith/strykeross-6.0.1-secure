.class Lcom/google/android/material/transition/FitModeEvaluators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

.field private static final WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    new-instance v0, Lcom/google/android/material/transition/FitModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/FitModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/FitModeEvaluator;
    .locals 0

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p0, p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Invalid fit mode: "

    .line 15
    .line 16
    invoke-static {p2, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/FitModeEvaluators;->shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->WIDTH:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    sget-object p0, Lcom/google/android/material/transition/FitModeEvaluators;->HEIGHT:Lcom/google/android/material/transition/FitModeEvaluator;

    .line 37
    .line 38
    :goto_0
    return-object p0
.end method

.method private static shouldAutoFitToWidth(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float v2, p2, v0

    div-float/2addr v2, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    cmpl-float p0, v2, p1

    if-ltz p0, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    cmpl-float p0, v1, p2

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
