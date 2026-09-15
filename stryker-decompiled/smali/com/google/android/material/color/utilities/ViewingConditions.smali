.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field private final aw:D

.field private final c:D

.field private final fl:D

.field private final flRoot:D

.field private final n:D

.field private final nbb:D

.field private final nc:D

.field private final ncb:D

.field private final rgbD:[D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    return-void
.end method

.method public static defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 8

    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v0

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v1

    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    move-wide v3, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/ViewingConditions;->make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object p0

    return-object p0
.end method

.method public static make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 44

    move-wide/from16 v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sget-object v6, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    const/4 v7, 0x0

    aget-wide v8, p0, v7

    aget-object v10, v6, v7

    aget-wide v11, v10, v7

    mul-double/2addr v11, v8

    const/4 v13, 0x1

    aget-wide v14, p0, v13

    aget-wide v16, v10, v13

    mul-double v16, v16, v14

    add-double v16, v16, v11

    const/4 v11, 0x2

    aget-wide v18, p0, v11

    aget-wide v20, v10, v11

    mul-double v20, v20, v18

    add-double v20, v20, v16

    aget-object v10, v6, v13

    aget-wide v16, v10, v7

    mul-double v16, v16, v8

    aget-wide v22, v10, v13

    mul-double v22, v22, v14

    add-double v22, v22, v16

    aget-wide v16, v10, v11

    mul-double v16, v16, v18

    add-double v16, v16, v22

    aget-object v6, v6, v11

    aget-wide v22, v6, v7

    mul-double v8, v8, v22

    aget-wide v22, v6, v13

    mul-double v14, v14, v22

    add-double/2addr v14, v8

    aget-wide v8, v6, v11

    mul-double v18, v18, v8

    add-double v18, v18, v14

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double v14, p5, v8

    const-wide v22, 0x3fe999999999999aL    # 0.8

    add-double v35, v14, v22

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpl-double v6, v35, v14

    if-ltz v6, :cond_0

    const-wide v24, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v26, 0x3fe6147ae147ae14L    # 0.69

    sub-double v14, v35, v14

    mul-double v28, v14, v8

    invoke-static/range {v24 .. v29}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v8

    :goto_0
    move-wide/from16 v33, v8

    goto :goto_1

    :cond_0
    const-wide v14, 0x3fe0cccccccccccdL    # 0.525

    const-wide v24, 0x3fe2e147ae147ae1L    # 0.59

    sub-double v22, v35, v22

    mul-double v26, v22, v8

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v27}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v8

    goto :goto_0

    :goto_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz p7, :cond_1

    move-wide/from16 v26, v8

    goto :goto_2

    :cond_1
    neg-double v14, v0

    const-wide/high16 v22, 0x4045000000000000L    # 42.0

    sub-double v14, v14, v22

    const-wide/high16 v22, 0x4057000000000000L    # 92.0

    div-double v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    const-wide v22, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    mul-double v14, v14, v22

    sub-double v14, v8, v14

    mul-double v14, v14, v35

    move-wide/from16 v26, v14

    :goto_2
    const-wide/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v27}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v14

    const/4 v6, 0x3

    new-array v10, v6, [D

    move-object/from16 v37, v10

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v24, v22, v20

    mul-double v24, v24, v14

    add-double v24, v24, v8

    sub-double v24, v24, v14

    aput-wide v24, v10, v7

    div-double v24, v22, v16

    mul-double v24, v24, v14

    add-double v24, v24, v8

    sub-double v24, v24, v14

    aput-wide v24, v10, v13

    div-double v24, v22, v18

    mul-double v24, v24, v14

    add-double v24, v24, v8

    sub-double v24, v24, v14

    aput-wide v24, v10, v11

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    mul-double/2addr v14, v0

    add-double v24, v14, v8

    div-double v24, v8, v24

    mul-double v26, v24, v24

    mul-double v26, v26, v24

    mul-double v26, v26, v24

    sub-double v8, v8, v26

    mul-double v26, v26, v0

    mul-double/2addr v2, v8

    mul-double/2addr v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double v0, v0, v26

    move-wide/from16 v38, v0

    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v2

    aget-wide v4, p0, v13

    div-double/2addr v2, v4

    move-wide/from16 v25, v2

    const-wide v4, 0x3ff7ae147ae147aeL    # 1.48

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double v42, v8, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3fe7333333333333L    # 0.725

    div-double/2addr v4, v2

    move-wide/from16 v29, v4

    move-wide/from16 v31, v4

    new-array v2, v6, [D

    aget-wide v8, v10, v7

    mul-double/2addr v8, v0

    mul-double v8, v8, v20

    div-double v8, v8, v22

    const-wide v14, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aput-wide v8, v2, v7

    aget-wide v8, v10, v13

    mul-double/2addr v8, v0

    mul-double v8, v8, v16

    div-double v8, v8, v22

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aput-wide v8, v2, v13

    aget-wide v8, v10, v11

    mul-double/2addr v8, v0

    mul-double v8, v8, v18

    div-double v8, v8, v22

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aput-wide v8, v2, v11

    aget-wide v6, v2, v7

    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    mul-double v14, v6, v10

    const-wide v16, 0x403b2147ae147ae1L    # 27.13

    add-double v6, v6, v16

    div-double/2addr v14, v6

    aget-wide v6, v2, v13

    mul-double v2, v6, v10

    add-double v6, v6, v16

    div-double/2addr v2, v6

    mul-double/2addr v10, v8

    add-double v8, v8, v16

    div-double/2addr v10, v8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v6

    add-double/2addr v14, v2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v10, v2

    add-double/2addr v10, v14

    mul-double v27, v10, v4

    new-instance v2, Lcom/google/android/material/color/utilities/ViewingConditions;

    move-object/from16 v24, v2

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v40

    invoke-direct/range {v24 .. v43}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    return-object v2
.end method


# virtual methods
.method public getAw()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    return-wide v0
.end method

.method public getC()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    return-wide v0
.end method

.method public getFl()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    return-wide v0
.end method

.method public getFlRoot()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    return-wide v0
.end method

.method public getN()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    return-wide v0
.end method

.method public getNbb()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    return-wide v0
.end method

.method public getNc()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    return-wide v0
.end method

.method public getNcb()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    return-wide v0
.end method

.method public getRgbD()[D
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    return-object v0
.end method

.method public getZ()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    return-wide v0
.end method
