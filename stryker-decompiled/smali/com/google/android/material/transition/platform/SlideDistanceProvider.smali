.class public final Lcom/google/android/material/transition/platform/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTANCE:I = -0x1


# instance fields
.field private slideDistance:I

.field private slideEdge:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    iput p1, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    return-void
.end method

.method private static createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p2, v2, :cond_7

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-eq p2, v2, :cond_6

    .line 14
    .line 15
    const/16 v2, 0x30

    .line 16
    .line 17
    if-eq p2, v2, :cond_5

    .line 18
    .line 19
    const/16 v2, 0x50

    .line 20
    .line 21
    if-eq p2, v2, :cond_4

    .line 22
    .line 23
    const v1, 0x800003

    .line 24
    .line 25
    .line 26
    if-eq p2, v1, :cond_2

    .line 27
    .line 28
    const v1, 0x800005

    .line 29
    .line 30
    .line 31
    if-ne p2, v1, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    int-to-float p0, p3

    .line 40
    sub-float p0, v0, p0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    int-to-float p0, p3

    .line 44
    add-float/2addr p0, v0

    .line 45
    :goto_0
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Invalid slide direction: "

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    int-to-float p0, p3

    .line 69
    add-float/2addr p0, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    int-to-float p0, p3

    .line 72
    sub-float p0, v0, p0

    .line 73
    .line 74
    :goto_1
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    int-to-float p0, p3

    .line 80
    add-float/2addr p0, v1

    .line 81
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_5
    int-to-float p0, p3

    .line 87
    sub-float p0, v1, p0

    .line 88
    .line 89
    invoke-static {p1, p0, v1, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_6
    int-to-float p0, p3

    .line 95
    sub-float p0, v0, p0

    .line 96
    .line 97
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_7
    int-to-float p0, p3

    .line 103
    add-float/2addr p0, v0

    .line 104
    invoke-static {p1, p0, v0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method private static createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p2, v2, :cond_7

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-eq p2, v2, :cond_6

    .line 14
    .line 15
    const/16 v2, 0x30

    .line 16
    .line 17
    if-eq p2, v2, :cond_5

    .line 18
    .line 19
    const/16 v2, 0x50

    .line 20
    .line 21
    if-eq p2, v2, :cond_4

    .line 22
    .line 23
    const v1, 0x800003

    .line 24
    .line 25
    .line 26
    if-eq p2, v1, :cond_2

    .line 27
    .line 28
    const v1, 0x800005

    .line 29
    .line 30
    .line 31
    if-ne p2, v1, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    int-to-float p0, p3

    .line 40
    add-float/2addr p0, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    int-to-float p0, p3

    .line 43
    sub-float p0, v0, p0

    .line 44
    .line 45
    :goto_0
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Invalid slide direction: "

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    int-to-float p0, p3

    .line 69
    sub-float p0, v0, p0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    int-to-float p0, p3

    .line 73
    add-float/2addr p0, v0

    .line 74
    :goto_1
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    int-to-float p0, p3

    .line 80
    sub-float p0, v1, p0

    .line 81
    .line 82
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_5
    int-to-float p0, p3

    .line 88
    add-float/2addr p0, v1

    .line 89
    invoke-static {p1, v1, p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_6
    int-to-float p0, p3

    .line 95
    add-float/2addr p0, v0

    .line 96
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_7
    int-to-float p0, p3

    .line 102
    sub-float p0, v0, p0

    .line 103
    .line 104
    invoke-static {p1, v0, p0, v0}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method private static createTranslationXAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/transition/platform/SlideDistanceProvider$1;

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/platform/SlideDistanceProvider$1;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FFF)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/transition/platform/SlideDistanceProvider$2;

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/transition/platform/SlideDistanceProvider$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getSlideDistanceOrDefault(Landroid/content/Context;)I
    .locals 2

    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private static isRtl(Landroid/view/View;)Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public getSlideDistance()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    return v0
.end method

.method public getSlideEdge()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    return v0
.end method

.method public setSlideDistance(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideDistance:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSlideEdge(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;->slideEdge:I

    return-void
.end method
