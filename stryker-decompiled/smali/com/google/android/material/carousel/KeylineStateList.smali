.class Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_INDEX:I = -0x1


# instance fields
.field private final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field private final leftShiftRange:F

.field private final leftStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final leftStateStepsInterpolationPoints:[F

.field private final rightShiftRange:F

.field private final rightStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final rightStateStepsInterpolationPoints:[F


# direct methods
.method private constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftStateSteps:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightStateSteps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftShiftRange:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightShiftRange:F

    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftStateStepsInterpolationPoints:[F

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightStateStepsInterpolationPoints:[F

    return-void
.end method

.method private static findFirstInBoundsKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static findLastInBoundsKeylineIndex(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 2

    new-instance v0, Lcom/google/android/material/carousel/KeylineStateList;

    invoke-static {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsLeft(Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRight(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static getStateStepInterpolationPoints(FLjava/util/List;Z)[F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;Z)[F"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_0

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float v5, v4, v5

    :goto_1
    div-float/2addr v5, p0

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    aget v3, v1, v3

    add-float/2addr v3, v5

    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getStateStepsLeft(Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstInBoundsKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    invoke-static {p0}, Lcom/google/android/material/carousel/KeylineStateList;->isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne v7, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v8, 0x1

    .line 28
    sub-int/2addr v1, v8

    .line 29
    sub-int v9, v1, v7

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 42
    .line 43
    const/high16 v3, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v2, v3

    .line 46
    sub-float v10, v1, v2

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move v11, v1

    .line 50
    :goto_0
    if-gt v11, v9, :cond_2

    .line 51
    .line 52
    invoke-static {v0, v8}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    .line 57
    .line 58
    add-int v2, v7, v11

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sub-int/2addr v3, v8

    .line 69
    sub-int/2addr v2, v8

    .line 70
    if-ltz v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 81
    .line 82
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 83
    .line 84
    invoke-static {v1, v2}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    sub-int/2addr v2, v8

    .line 89
    move v3, v2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    sub-int/2addr v2, v11

    .line 95
    add-int/lit8 v5, v2, -0x1

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    sub-int/2addr v2, v11

    .line 102
    add-int/lit8 v6, v2, -0x1

    .line 103
    .line 104
    move v2, v7

    .line 105
    move v4, v10

    .line 106
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFII)Lcom/google/android/material/carousel/KeylineState;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v11, v11, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getStateStepsRight(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->findLastInBoundsKeylineIndex(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)I

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->isLastFocalItemAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    if-ne v7, p0, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sub-int p0, v7, p0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    .line 40
    .line 41
    const/high16 v3, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v2, v3

    .line 44
    sub-float v8, v1, v2

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    move v10, v9

    .line 48
    :goto_0
    if-ge v10, p0, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    .line 56
    .line 57
    sub-int v3, v7, v10

    .line 58
    .line 59
    add-int/2addr v3, v1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ge v3, v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 79
    .line 80
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/google/android/material/carousel/KeylineStateList;->findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    add-int/2addr v3, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v3, v9

    .line 89
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    add-int/2addr v4, v10

    .line 94
    add-int/lit8 v5, v4, 0x1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    add-int/2addr v4, v10

    .line 101
    add-int/lit8 v6, v4, 0x1

    .line 102
    .line 103
    move-object v1, v2

    .line 104
    move v2, v7

    .line 105
    move v4, v8

    .line 106
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFII)Lcom/google/android/material/carousel/KeylineState;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v10, v10, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isLastFocalItemAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-gez p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p2, v3

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_0

    add-int/lit8 p2, v3, -0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    invoke-static {p2, p0, p1}, Lcom/google/android/material/carousel/KeylineState;->lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method

.method private static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFII)Lcom/google/android/material/carousel/KeylineState;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p0

    invoke-direct {p1, p0}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    const/4 p0, 0x0

    move p2, p0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    add-float/2addr v3, p3

    if-lt p2, p4, :cond_0

    if-gt p2, p5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, p0

    :goto_1
    iget v5, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    invoke-virtual {p1, v3, v5, v2, v4}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultState()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method public getLeftState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method public getRightState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method public getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 5

    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftShiftRange:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightShiftRange:F

    sub-float v1, p3, v1

    cmpg-float v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    invoke-static {v4, v3, p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftStateSteps:Ljava/util/List;

    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->leftStateStepsInterpolationPoints:[F

    invoke-static {p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    :cond_0
    cmpl-float p2, p1, v1

    if-lez p2, :cond_1

    invoke-static {v3, v4, v1, p3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightStateSteps:Ljava/util/List;

    iget-object p3, p0, Lcom/google/android/material/carousel/KeylineStateList;->rightStateStepsInterpolationPoints:[F

    invoke-static {p2, p1, p3}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object p1
.end method
