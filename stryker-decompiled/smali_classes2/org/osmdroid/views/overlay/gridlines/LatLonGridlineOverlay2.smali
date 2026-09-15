.class public Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field protected mDecimalFormatter:Ljava/text/DecimalFormat;

.field protected mLinePaint:Landroid/graphics/Paint;

.field protected mMultiplier:F

.field protected mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field protected mOptimizationPoint:Landroid/graphics/Point;

.field protected mTextBackgroundPaint:Landroid/graphics/Paint;

.field protected mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setLineColor(I)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setFontColor(I)V

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setLineWidth(F)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->setFontSizeDp(S)V

    return-void
.end method

.method private computeStartLatitude(DD)D
    .locals 2

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    mul-double/2addr p1, p3

    :goto_0
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    sub-double/2addr p1, p3

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    add-double/2addr p1, p3

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method private formatCoordinate(DZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    cmpl-double p1, p1, v1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    if-lez p1, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "N"

    goto :goto_0

    :cond_1
    const-string p1, "E"

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "S"

    goto :goto_0

    :cond_3
    const-string p1, "W"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->getIncrementor(I)D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getCurrentCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double v10, v8, v2

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, v8, v9}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v1, v16

    div-float v18, v5, v16

    mul-float v2, v1, v1

    mul-float v3, v5, v5

    add-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v6, v2

    div-float v2, v6, v16

    float-to-double v2, v2

    mul-double v19, v2, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v21, v1, v2

    div-float v22, v5, v2

    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v1, v1, v23

    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v24, v2, v23

    add-float v25, v1, v24

    const/16 v26, 0x0

    move/from16 v3, v26

    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_1a

    move/from16 v1, v26

    :goto_1
    if-gt v1, v4, :cond_19

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v2

    neg-float v2, v2

    if-nez v1, :cond_1

    move/from16 v4, v26

    goto :goto_2

    :cond_1
    const/16 v27, 0x5a

    move/from16 v4, v27

    :goto_2
    int-to-float v4, v4

    add-float/2addr v4, v2

    move-wide/from16 v29, v10

    move/from16 v10, v26

    :goto_3
    const/4 v2, 0x1

    if-gt v10, v2, :cond_18

    move v11, v3

    if-nez v10, :cond_2

    move-wide/from16 v31, v8

    goto :goto_4

    :cond_2
    neg-double v2, v8

    move-wide/from16 v31, v2

    :goto_4
    if-nez v1, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_5
    move v3, v2

    move-wide/from16 v34, v12

    move/from16 v33, v26

    move-wide/from16 v36, v29

    const/16 v27, 0x1

    :goto_6
    if-eqz v27, :cond_17

    if-lez v33, :cond_5

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    add-double v36, v36, v31

    :goto_7
    const-wide v38, -0x3f99800000000000L    # -180.0

    cmpg-double v28, v36, v38

    const-wide v38, 0x4076800000000000L    # 360.0

    if-gez v28, :cond_4

    add-double v36, v36, v38

    goto :goto_7

    :cond_4
    :goto_8
    const-wide v40, 0x4066800000000000L    # 180.0

    cmpl-double v28, v36, v40

    if-lez v28, :cond_5

    sub-double v36, v36, v38

    goto :goto_8

    :cond_5
    move/from16 v38, v3

    :cond_6
    :goto_9
    move/from16 v28, v4

    move-wide/from16 v2, v34

    move-wide/from16 v34, v8

    move-wide/from16 v8, v36

    goto :goto_b

    :cond_7
    add-double v34, v34, v31

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v38

    cmpl-double v28, v34, v38

    if-lez v28, :cond_8

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v28

    move/from16 v38, v3

    invoke-virtual/range {v28 .. v28}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    :goto_a
    invoke-direct {v0, v2, v3, v8, v9}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->computeStartLatitude(DD)D

    move-result-wide v34

    goto :goto_9

    :cond_8
    move/from16 v38, v3

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    cmpg-double v2, v34, v2

    if-gez v2, :cond_6

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    goto :goto_a

    :goto_b
    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4, v2, v3, v8, v9}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationGeoPoint:Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v36, v2

    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    move-object/from16 v3, p2

    invoke-virtual {v3, v4, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    if-nez v1, :cond_b

    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    move/from16 v40, v6

    move/from16 v2, v38

    move/from16 v38, v5

    int-to-double v5, v2

    move/from16 v41, v1

    iget v1, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v42, v4

    int-to-double v3, v1

    move/from16 v43, v2

    const/16 v39, 0x1

    move-wide v1, v5

    move/from16 v5, v28

    move/from16 v6, v43

    move/from16 v28, v11

    move-object/from16 v11, v42

    move-wide/from16 v42, v8

    move v8, v5

    move v9, v6

    move-wide v5, v14

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v11, Landroid/graphics/Point;->y:I

    if-lez v33, :cond_a

    const-wide/16 v1, 0x0

    cmpg-double v1, v31, v1

    if-gez v1, :cond_9

    :goto_c
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v9, :cond_a

    int-to-double v2, v2

    add-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_c

    :cond_9
    :goto_d
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-le v2, v9, :cond_a

    int-to-double v2, v2

    sub-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_d

    :cond_a
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_e
    move v9, v1

    goto :goto_f

    :cond_b
    move/from16 v41, v1

    move/from16 v40, v6

    move-wide/from16 v42, v8

    move/from16 v8, v28

    move/from16 v9, v38

    move/from16 v38, v5

    move/from16 v28, v11

    iget-object v11, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    int-to-double v1, v9

    iget v3, v11, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    move-wide v5, v14

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v11, Landroid/graphics/Point;->x:I

    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    goto :goto_e

    :goto_f
    const/4 v11, 0x1

    if-nez v33, :cond_c

    if-ne v10, v11, :cond_c

    move/from16 v47, v8

    goto/16 :goto_17

    :cond_c
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mOptimizationPoint:Landroid/graphics/Point;

    if-nez v41, :cond_d

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v1

    sub-float v3, v17, v40

    add-float v6, v17, v40

    int-to-float v4, v1

    sub-float v4, v4, v18

    int-to-float v1, v1

    sub-float v1, v1, v18

    mul-float/2addr v1, v4

    float-to-double v4, v1

    move/from16 v27, v2

    move v2, v3

    move/from16 v3, v27

    goto :goto_10

    :cond_d
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    sub-float v3, v18, v40

    add-float v6, v18, v40

    int-to-float v4, v1

    sub-float v4, v4, v17

    int-to-float v1, v1

    sub-float v1, v1, v17

    mul-float/2addr v1, v4

    float-to-double v4, v1

    move/from16 v27, v6

    move v6, v2

    :goto_10
    cmpg-double v1, v4, v19

    if-gtz v1, :cond_e

    move/from16 v39, v11

    goto :goto_11

    :cond_e
    move/from16 v39, v26

    :goto_11
    if-eqz v39, :cond_f

    if-nez v28, :cond_10

    iget-object v5, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v6

    move-object v6, v5

    move/from16 v5, v27

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_f
    move/from16 v47, v8

    goto/16 :goto_16

    :cond_10
    if-nez v41, :cond_11

    move-wide/from16 v4, v36

    goto :goto_12

    :cond_11
    move-wide/from16 v4, v42

    :goto_12
    if-nez v41, :cond_12

    move v1, v11

    goto :goto_13

    :cond_12
    move/from16 v1, v26

    :goto_13
    invoke-direct {v0, v4, v5, v1}, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->formatCoordinate(DZ)Ljava/lang/String;

    move-result-object v6

    if-nez v41, :cond_13

    move/from16 v5, v21

    goto :goto_14

    :cond_13
    move v5, v2

    :goto_14
    if-nez v41, :cond_14

    goto :goto_15

    :cond_14
    sub-float v3, v38, v22

    :goto_15
    iget-object v1, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float v1, v1, v23

    const/4 v2, 0x0

    cmpl-float v27, v8, v2

    if-eqz v27, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v8, v5, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_15
    div-float v1, v1, v16

    sub-float v2, v5, v1

    div-float v4, v25, v16

    sub-float v44, v3, v4

    add-float v45, v5, v1

    add-float v46, v3, v4

    iget-object v4, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v44

    move-object/from16 v44, v4

    move/from16 v4, v45

    move v11, v5

    move/from16 v5, v46

    move/from16 v47, v8

    move-object v8, v6

    move-object/from16 v6, v44

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-float v1, v46, v24

    iget-object v2, v0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v11, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v27, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    :goto_16
    move/from16 v27, v39

    :goto_17
    add-int/lit8 v33, v33, 0x1

    move v3, v9

    move/from16 v11, v28

    move-wide/from16 v8, v34

    move-wide/from16 v34, v36

    move/from16 v5, v38

    move/from16 v6, v40

    move/from16 v1, v41

    move-wide/from16 v36, v42

    move/from16 v4, v47

    goto/16 :goto_6

    :cond_17
    move/from16 v41, v1

    move/from16 v47, v4

    move/from16 v38, v5

    move/from16 v40, v6

    move-wide/from16 v34, v8

    move/from16 v28, v11

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v28

    goto/16 :goto_3

    :cond_18
    move/from16 v41, v1

    move/from16 v28, v3

    move/from16 v38, v5

    move/from16 v40, v6

    move-wide/from16 v34, v8

    add-int/lit8 v1, v41, 0x1

    move-wide/from16 v10, v29

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_19
    move/from16 v28, v3

    move/from16 v38, v5

    move/from16 v40, v6

    move-wide/from16 v34, v8

    move-wide/from16 v29, v10

    add-int/lit8 v3, v28, 0x1

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public getIncrementor(I)D
    .locals 4

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3e8999999999999aL    # 1.9073486328125E-7

    :goto_0
    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_0
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3e9999999999999aL    # 3.814697265625E-7

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ea999999999999aL    # 7.62939453125E-7

    goto :goto_0

    :pswitch_2
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3eb999999999999aL    # 1.52587890625E-6

    goto :goto_0

    :pswitch_3
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ec999999999999aL    # 3.0517578125E-6

    goto :goto_0

    :pswitch_4
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ed999999999999aL    # 6.103515625E-6

    goto :goto_0

    :pswitch_5
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ee999999999999aL    # 1.220703125E-5

    goto :goto_0

    :pswitch_6
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3ef999999999999aL    # 2.44140625E-5

    goto :goto_0

    :pswitch_7
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f0999999999999aL    # 4.8828125E-5

    goto :goto_0

    :pswitch_8
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f1999999999999aL    # 9.765625E-5

    goto :goto_0

    :pswitch_9
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f2999999999999aL    # 1.953125E-4

    goto :goto_0

    :pswitch_a
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f3999999999999aL    # 3.90625E-4

    goto :goto_0

    :pswitch_b
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f4999999999999aL    # 7.8125E-4

    goto :goto_0

    :pswitch_c
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f5999999999999aL    # 0.0015625

    goto :goto_0

    :pswitch_d
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f6999999999999aL    # 0.003125

    goto :goto_0

    :pswitch_e
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f7999999999999aL    # 0.00625

    goto/16 :goto_0

    :pswitch_f
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f8999999999999aL    # 0.0125

    goto/16 :goto_0

    :pswitch_10
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3f9999999999999aL    # 0.025

    goto/16 :goto_0

    :pswitch_11
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_0

    :pswitch_12
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    goto/16 :goto_0

    :pswitch_13
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    goto/16 :goto_0

    :pswitch_14
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_0

    :pswitch_15
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :pswitch_16
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    goto/16 :goto_0

    :pswitch_17
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    goto/16 :goto_0

    :pswitch_18
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    goto/16 :goto_0

    :pswitch_19
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    goto/16 :goto_0

    :pswitch_1a
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    goto/16 :goto_0

    :pswitch_1b
    iget p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDecimalFormatter(Ljava/text/DecimalFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mDecimalFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFontSizeDp(S)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setMultiplier(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mMultiplier:F

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gridlines/LatLonGridlineOverlay2;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
