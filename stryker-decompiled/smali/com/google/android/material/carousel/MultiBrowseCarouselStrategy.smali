.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    }
.end annotation


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final MEDIUM_COUNTS_COMPACT:[I

.field private static final MEDIUM_ITEM_FLEX_PERCENTAGE:F = 0.1f

.field private static final SMALL_COUNTS:[I


# instance fields
.field private final forceCompactArrangement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS_COMPACT:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->forceCompactArrangement:Z

    return-void
.end method

.method private static findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;
    .locals 25

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    aget v19, v2, v7

    array-length v15, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_4

    aget v20, v1, v14

    array-length v13, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_3

    aget v16, v0, v12

    new-instance v11, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;

    move-object v8, v11

    move v9, v5

    move/from16 v10, p1

    move-object v6, v11

    move/from16 v11, p2

    move/from16 v21, v12

    move/from16 v12, p3

    move/from16 v22, v13

    move/from16 v13, v16

    move/from16 v23, v14

    move/from16 v14, p5

    move/from16 v24, v15

    move/from16 v15, v20

    move/from16 v16, p7

    move/from16 v17, v19

    move/from16 v18, p0

    invoke-direct/range {v8 .. v18}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;-><init>(IFFFIFIFIF)V

    if-eqz v4, :cond_0

    iget v8, v6, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->cost:F

    iget v9, v4, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->cost:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    :cond_0
    iget v4, v6, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->cost:F

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1

    return-object v6

    :cond_1
    move-object v4, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v21, 0x1

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, v24

    goto :goto_2

    :cond_3
    move/from16 v23, v14

    move/from16 v24, v15

    add-int/lit8 v14, v23, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v4
.end method

.method private getExtraSmallSize(Landroid/content/Context;)F
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method private getSmallSizeMax(Landroid/content/Context;)F
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_max:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method private getSmallSizeMin(Landroid/content/Context;)F
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_min:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method private static maxValue([I)I
    .locals 4

    array-length v0, p0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 21

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/x0;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v3

    add-float v4, v3, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v3

    add-float v5, v3, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v6, v3, v1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v3, v6

    add-float/2addr v3, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMin(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallSizeMax(Landroid/content/Context;)F

    move-result v7

    add-float/2addr v7, v1

    invoke-static {v3, v6, v7}, Lv1/f;->i(FFF)F

    move-result v3

    add-float v6, v9, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float v7, v6, v11

    sget-object v6, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    iget-boolean v8, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->forceCompactArrangement:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS_COMPACT:[I

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    :goto_0
    invoke-static {v8}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->maxValue([I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float v10, v2, v10

    invoke-static {v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->maxValue([I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v5

    sub-float/2addr v10, v12

    div-float/2addr v10, v9

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-int v10, v12

    div-float v12, v2, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    sub-int v10, v12, v10

    add-int/lit8 v10, v10, 0x1

    new-array v13, v10, [I

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v10, :cond_1

    sub-int v16, v12, v15

    aput v16, v13, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    move-object v10, v13

    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v3

    add-float/2addr v3, v1

    div-float v4, v3, v11

    const/4 v5, 0x0

    sub-float v6, v5, v4

    iget v7, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    div-float/2addr v7, v11

    add-float v16, v7, v5

    iget v5, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    iget v7, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    mul-float/2addr v5, v7

    add-float v5, v5, v16

    div-float/2addr v7, v11

    add-float/2addr v7, v5

    iget v8, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumCount:I

    if-lez v8, :cond_2

    iget v5, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    div-float/2addr v5, v11

    add-float/2addr v5, v7

    :cond_2
    if-lez v8, :cond_3

    iget v7, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    div-float/2addr v7, v11

    add-float/2addr v7, v5

    :cond_3
    iget v8, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallCount:I

    if-lez v8, :cond_4

    iget v8, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallSize:F

    div-float/2addr v8, v11

    add-float/2addr v8, v7

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v4, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    invoke-static {v3, v4, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v4

    iget v9, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallSize:F

    iget v10, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    invoke-static {v9, v10, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v9

    iget v10, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    iget v11, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    invoke-static {v10, v11, v1}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v1

    const/16 v17, 0x0

    new-instance v10, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v11, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    invoke-direct {v10, v11}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    invoke-virtual {v10, v6, v4, v3}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v15

    iget v6, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeSize:F

    iget v10, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->largeCount:I

    const/16 v20, 0x1

    move/from16 v18, v6

    move/from16 v19, v10

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v6

    iget v10, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumCount:I

    if-lez v10, :cond_5

    iget v10, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->mediumSize:F

    invoke-virtual {v6, v5, v1, v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    :cond_5
    iget v1, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallCount:I

    if-lez v1, :cond_6

    iget v2, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy$Arrangement;->smallSize:F

    invoke-virtual {v6, v8, v9, v2, v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;

    :cond_6
    invoke-virtual {v6, v7, v4, v3}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    return-object v1
.end method
