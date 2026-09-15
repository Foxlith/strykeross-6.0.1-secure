.class public Lcom/google/android/material/color/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SRGB_TO_XYZ:[[D

.field static final WHITE_POINT_D65:[D

.field static final XYZ_TO_SRGB:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    sput-object v1, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    return-void

    :array_0
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    :array_1
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_2
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    :array_3
    .array-data 8
        0x4009ee5750da932bL    # 3.2413774792388685
        -0x400765b9220c7764L    # -1.5376652402851851
        -0x402012c8101da46cL    # -0.49885366846268053
    .end array-data

    :array_4
    .array-data 8
        -0x4010fcc31912e57cL    # -0.9691452513005321
        0x3ffe03a05a04781dL    # 1.8758853451067872
        0x3fa5481eb1c0d367L    # 0.04156585616912061
    .end array-data

    :array_5
    .array-data 8
        0x3fac7a58f1e3e6efL    # 0.05562093689691305
        -0x4035e4cb650c5ffeL    # -0.20395524564742123
        0x3ff0ea357b841dfcL    # 1.0571799111220335
    .end array-data

    :array_6
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaFromArgb(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static argbFromLab(DDD)I
    .locals 9

    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v1

    const-wide/high16 v1, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v1

    const-wide v1, 0x407f400000000000L    # 500.0

    div-double/2addr p2, v1

    add-double/2addr p2, p0

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    div-double/2addr p4, v1

    sub-double p4, p0, p4

    invoke-static {p2, p3}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide p4

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    mul-double v3, p2, v1

    const/4 p2, 0x1

    aget-wide p2, v0, p2

    mul-double v5, p0, p2

    const/4 p0, 0x2

    aget-wide p0, v0, p0

    mul-double v7, p4, p0

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromXyz(DDD)I

    move-result p0

    return p0
.end method

.method public static argbFromLinrgb([D)I
    .locals 4

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v1

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    move-result p0

    return p0
.end method

.method public static argbFromLstar(D)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result p0

    invoke-static {p0, p0, p0}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    move-result p0

    return p0
.end method

.method public static argbFromRgb(III)I
    .locals 1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static argbFromXyz(DDD)I
    .locals 12

    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-wide v3, v2, v1

    mul-double/2addr v3, p0

    const/4 v5, 0x1

    aget-wide v6, v2, v5

    mul-double/2addr v6, p2

    add-double/2addr v6, v3

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    mul-double v8, v8, p4

    add-double/2addr v8, v6

    aget-object v2, v0, v5

    aget-wide v6, v2, v1

    mul-double/2addr v6, p0

    aget-wide v10, v2, v5

    mul-double/2addr v10, p2

    add-double/2addr v10, v6

    aget-wide v6, v2, v3

    mul-double v6, v6, p4

    add-double/2addr v6, v10

    aget-object v0, v0, v3

    aget-wide v1, v0, v1

    mul-double/2addr v1, p0

    aget-wide v4, v0, v5

    mul-double/2addr v4, p2

    add-double/2addr v4, v1

    aget-wide v1, v0, v3

    mul-double v1, v1, p4

    add-double/2addr v1, v4

    invoke-static {v8, v9}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v0

    invoke-static {v6, v7}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v3

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    move-result v0

    return v0
.end method

.method public static blueFromArgb(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static delinearized(D)I
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr p0, v0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr p0, v0

    :goto_0
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x0

    const/16 v0, 0xff

    invoke-static {p1, v0, p0}, Lcom/google/android/material/color/utilities/MathUtils;->clampInt(III)I

    move-result p0

    return p0
.end method

.method public static greenFromArgb(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static isOpaque(I)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->alphaFromArgb(I)I

    move-result p0

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static labF(D)D
    .locals 2

    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static labFromArgb(I)[D
    .locals 18

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v0

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v4

    sget-object v6, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    const/4 v7, 0x0

    aget-object v8, v6, v7

    aget-wide v9, v8, v7

    mul-double/2addr v9, v0

    const/4 v11, 0x1

    aget-wide v12, v8, v11

    mul-double/2addr v12, v2

    add-double/2addr v12, v9

    const/4 v9, 0x2

    aget-wide v14, v8, v9

    mul-double/2addr v14, v4

    add-double/2addr v14, v12

    aget-object v8, v6, v11

    aget-wide v12, v8, v7

    mul-double/2addr v12, v0

    aget-wide v16, v8, v11

    mul-double v16, v16, v2

    add-double v16, v16, v12

    aget-wide v12, v8, v9

    mul-double/2addr v12, v4

    add-double v12, v12, v16

    aget-object v6, v6, v9

    aget-wide v16, v6, v7

    mul-double v16, v16, v0

    aget-wide v0, v6, v11

    mul-double/2addr v0, v2

    add-double v0, v0, v16

    aget-wide v2, v6, v9

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    aget-wide v4, v0, v7

    div-double/2addr v14, v4

    aget-wide v4, v0, v11

    div-double/2addr v12, v4

    aget-wide v4, v0, v9

    div-double/2addr v2, v4

    invoke-static {v14, v15}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v0

    invoke-static {v12, v13}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v2

    const-wide/high16 v12, 0x405d000000000000L    # 116.0

    mul-double/2addr v12, v4

    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    sub-double/2addr v12, v14

    const-wide v14, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v4

    mul-double/2addr v0, v14

    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    sub-double/2addr v4, v2

    mul-double/2addr v4, v14

    const/4 v2, 0x3

    new-array v2, v2, [D

    aput-wide v12, v2, v7

    aput-wide v0, v2, v11

    aput-wide v4, v2, v9

    return-object v2
.end method

.method public static labInvf(D)D
    .locals 4

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    const-wide v2, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    sub-double/2addr p0, v0

    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static linearized(I)D
    .locals 6

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    const-wide v2, 0x3fa4b5daa07d970dL    # 0.040449936

    cmpg-double p0, v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-gtz p0, :cond_0

    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v0, v4

    :goto_0
    mul-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, v4

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static lstarFromArgb(I)D
    .locals 4

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->xyzFromArgb(I)[D

    move-result-object p0

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static lstarFromY(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static redFromArgb(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static whitePointD65()[D
    .locals 1

    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    return-object v0
.end method

.method public static xyzFromArgb(I)[D
    .locals 7

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v2

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v4

    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 v6, 0x0

    aput-wide v0, p0, v6

    const/4 v0, 0x1

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    aput-wide v4, p0, v0

    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object p0

    return-object p0
.end method

.method public static yFromLstar(D)D
    .locals 2

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    return-wide p0
.end method
