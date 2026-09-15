.class public abstract Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "SourceFile"


# instance fields
.field private final mClosePath:Z

.field protected mDensity:F

.field private mDensityMultiplier:F

.field private final mDowngradeBottomRight:Landroid/graphics/Point;

.field private final mDowngradeCenter:Lorg/osmdroid/util/PointL;

.field private mDowngradeDisplay:Z

.field private mDowngradeMaximumPixelSize:I

.field private mDowngradeMaximumRectanglePixelSize:I

.field private final mDowngradeOffset:Lorg/osmdroid/util/PointL;

.field private mDowngradeSegments:[F

.field private final mDowngradeTopLeft:Landroid/graphics/Point;

.field protected mFillPaint:Landroid/graphics/Paint;

.field protected mHoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/LinearRing;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

.field private mIsPaintOrPaintList:Z

.field private mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

.field private mMilestoneManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutline:Lorg/osmdroid/views/overlay/LinearRing;

.field protected mOutlinePaint:Landroid/graphics/Paint;

.field private final mOutlinePaintLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/PaintList;",
            ">;"
        }
    .end annotation
.end field

.field protected mPath:Landroid/graphics/Path;

.field private final mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

.field private final mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

.field private final mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

.field private final mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;ZZ)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaintLists:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    new-instance v1, Lorg/osmdroid/util/PointL;

    invoke-direct {v1}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iput v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getRepository()Lorg/osmdroid/views/MapViewRepository;

    move-result-object p3

    invoke-virtual {p3}, Lorg/osmdroid/views/MapViewRepository;->getDefaultPolylineInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->usePath(Z)V

    return-void
.end method

.method private displayDowngrade(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v2

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-long v10, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-long v12, v4

    long-to-double v4, v10

    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    move-wide v8, v2

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v4, v12

    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    cmp-long v4, v10, v14

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    move-wide v7, v5

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    sub-long/2addr v10, v14

    move-wide v7, v10

    move-wide v10, v14

    goto :goto_0

    :cond_1
    sub-long v7, v14, v10

    :goto_0
    cmp-long v4, v12, v2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-lez v4, :cond_3

    sub-long v5, v12, v2

    move-wide v12, v2

    goto :goto_1

    :cond_3
    sub-long v5, v2, v12

    :goto_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    const-wide/16 v3, 0x2

    div-long v14, v7, v3

    add-long/2addr v14, v10

    div-long v3, v5, v3

    add-long/2addr v3, v12

    invoke-virtual {v2, v14, v15, v3, v4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    invoke-virtual {v2, v1, v3, v4}, Lorg/osmdroid/views/overlay/LinearRing;->getBestOffset(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeOffset:Lorg/osmdroid/util/PointL;

    iget-wide v2, v1, Lorg/osmdroid/util/PointL;->x:J

    add-long/2addr v10, v2

    iget-wide v1, v1, Lorg/osmdroid/util/PointL;->y:J

    add-long/2addr v12, v1

    iget-boolean v1, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    :cond_4
    move-wide/from16 v20, v10

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lorg/osmdroid/views/overlay/PaintList;

    invoke-interface {v14}, Lorg/osmdroid/views/overlay/PaintList;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v15, 0x0

    long-to-float v1, v10

    long-to-float v3, v12

    move v4, v3

    add-long v2, v10, v7

    long-to-float v2, v2

    move-wide/from16 v20, v10

    add-long v9, v12, v5

    long-to-float v3, v9

    move/from16 v16, v1

    move/from16 v17, v4

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-interface/range {v14 .. v19}, Lorg/osmdroid/views/overlay/PaintList;->getPaint(IFFFF)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-wide/from16 v20, v10

    const/4 v1, 0x0

    :goto_2
    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    cmp-long v2, v7, v5

    if-lez v2, :cond_8

    move-wide v2, v7

    goto :goto_3

    :cond_8
    move-wide v2, v5

    :goto_3
    iget v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumRectanglePixelSize:I

    int-to-long v9, v4

    cmp-long v4, v2, v9

    if-gtz v4, :cond_9

    move-wide/from16 v10, v20

    long-to-float v15, v10

    long-to-float v2, v12

    add-long/2addr v10, v7

    long-to-float v3, v10

    add-long/2addr v12, v5

    long-to-float v4, v12

    move-object/from16 v14, p1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_9
    iget-object v4, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    invoke-virtual {v4, v5}, Lorg/osmdroid/views/overlay/LinearRing;->computeDowngradePointList(I)[F

    move-result-object v4

    if-eqz v4, :cond_10

    array-length v5, v4

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    if-eqz v6, :cond_b

    array-length v6, v6

    if-ge v6, v5, :cond_c

    :cond_b
    new-array v5, v5, [F

    iput-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    :cond_c
    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    move v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    array-length v8, v4

    if-ge v6, v8, :cond_e

    iget-object v8, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeCenter:Lorg/osmdroid/util/PointL;

    iget-wide v9, v8, Lorg/osmdroid/util/PointL;->x:J

    long-to-float v9, v9

    add-int/lit8 v10, v6, 0x1

    aget v11, v4, v6

    mul-float/2addr v11, v2

    add-float/2addr v11, v9

    iget-wide v8, v8, Lorg/osmdroid/util/PointL;->y:J

    long-to-float v8, v8

    add-int/lit8 v6, v6, 0x2

    aget v9, v4, v10

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    if-nez v7, :cond_d

    move v5, v9

    move v3, v11

    goto :goto_5

    :cond_d
    iget-object v8, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v10, v7, 0x1

    aput v11, v8, v7

    add-int/lit8 v7, v7, 0x2

    aput v9, v8, v10

    :goto_5
    iget-object v8, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v10, v7, 0x1

    aput v11, v8, v7

    add-int/lit8 v7, v7, 0x2

    aput v9, v8, v10

    goto :goto_4

    :cond_e
    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeSegments:[F

    add-int/lit8 v4, v7, 0x1

    aput v3, v2, v7

    add-int/lit8 v7, v7, 0x2

    aput v5, v2, v4

    const/4 v3, 0x4

    if-gt v7, v3, :cond_f

    return-void

    :cond_f
    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v7, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_10
    :goto_6
    return-void
.end method

.method private drawWithLines(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LineDrawer;->setCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v1, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->buildLinePortion(Lorg/osmdroid/views/Projection;Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getOutlinePaintLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/overlay/PaintList;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v4, v3}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Lorg/osmdroid/views/overlay/PaintList;)V

    iget-object v3, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v3, p2, v0}, Lorg/osmdroid/views/overlay/LinearRing;->buildLinePortion(Lorg/osmdroid/views/Projection;Z)V

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->init()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->setDistances([D)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/LinearRing;->getPointsForMilestones()Lorg/osmdroid/util/ListPointL;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/PointL;

    iget-wide v3, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v5, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->add(JJ)V

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->end()V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_6

    iget-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    :cond_6
    return-void
.end method

.method private drawWithPath(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 11

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v1}, Lorg/osmdroid/views/overlay/LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->init()V

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/LinearRing;->getDistances()[D

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->setDistances([D)V

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/LinearRing;->getPointsForMilestones()Lorg/osmdroid/util/ListPointL;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/util/PointL;

    iget-wide v7, v6, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v9, v6, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->add(JJ)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->end()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v4, p2}, Lorg/osmdroid/views/overlay/LinearRing;->setClipArea(Lorg/osmdroid/views/Projection;)V

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v3

    goto :goto_4

    :cond_3
    move v5, v2

    :goto_4
    invoke-virtual {v4, p2, v0, v5}, Lorg/osmdroid/views/overlay/LinearRing;->buildPathPortion(Lorg/osmdroid/views/Projection;Lorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :cond_5
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Landroid/graphics/Paint;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_9

    iget-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->draw()V

    :cond_9
    return-void
.end method

.method private isVisible(Landroid/graphics/Paint;)Z
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isVisible(Lorg/osmdroid/views/Projection;)Z
    .locals 20

    .line 3
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getCenterLongitude()D

    move-result-wide v5

    iget-object v7, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v9

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v11

    iget-object v13, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    iget-object v2, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCenter:Lorg/osmdroid/util/PointL;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    iget-object v8, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityProjectedCorner:Lorg/osmdroid/util/PointL;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v9

    const/4 v11, 0x1

    iget-object v12, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v4, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v6, v4

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v8, v3

    iget-object v3, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCorner:Lorg/osmdroid/util/PointL;

    iget-wide v4, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v10, v4

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v12, v3

    invoke-static/range {v6 .. v13}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget-object v5, v0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mVisibilityRectangleCenter:Lorg/osmdroid/util/PointL;

    iget-wide v6, v5, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v8, v6

    iget-wide v5, v5, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v10, v5

    int-to-double v5, v1

    int-to-double v1, v2

    move-wide v12, v5

    move-wide v14, v1

    invoke-static/range {v8 .. v15}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v1

    invoke-static/range {v12 .. v19}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    cmpg-double v1, v7, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isWorthDisplaying(Lorg/osmdroid/views/Projection;)Z
    .locals 10

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v0

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, p1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v4, p1

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v2, p1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v4, p1

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/views/overlay/LinearRing;->getCloserValue(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    return v3

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-long v4, p1

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    return v3

    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeBottomRight:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    if-ge p1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeTopLeft:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-long v4, p1

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-gez p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method public abstract click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
.end method

.method public contains(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Region;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isVisible(Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    if-lez v0, :cond_2

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->isWorthDisplaying(Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeDisplay:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->displayDowngrade(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->drawWithPath(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->drawWithLines(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :goto_0
    return-void
.end method

.method public getActualPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;
    .locals 6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/overlay/LinearRing;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/Projection;Z)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getDistance()D
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getInfoWindowLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOutlinePaintLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/PaintList;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mIsPaintOrPaintList:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaintLists:Ljava/util/List;

    return-object v0
.end method

.method public isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isGeodesic()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/LinearRing;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->onDestroy()V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    iget v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensity:F

    mul-float/2addr p1, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setDefaultInfoWindowLocation()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/LinearRing;->getCenter(Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setDensityMultiplier(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDensityMultiplier:F

    return-void
.end method

.method public setDowngradeDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeDisplay:Z

    return-void
.end method

.method public setDowngradePixelSizes(II)V
    .locals 0

    iput p2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumRectanglePixelSize:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mDowngradeMaximumPixelSize:I

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->setGeodesic(Z)V

    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getRelatedObject()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->setRelatedObject(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-void
.end method

.method public setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setMilestoneManagers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneManager;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mMilestoneManagers:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LinearRing;->setPoints(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setDefaultInfoWindowLocation()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->setEnabled(Z)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mInfoWindowLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    :cond_0
    return-void
.end method

.method public usePath(Z)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    new-instance v1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    invoke-direct {v1, p1, v2}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    new-instance p1, Lorg/osmdroid/views/overlay/LineDrawer;

    const/16 v1, 0x100

    invoke-direct {p1, v1}, Lorg/osmdroid/views/overlay/LineDrawer;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    new-instance v1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mClosePath:Z

    invoke-direct {v1, p1, v2}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Lorg/osmdroid/util/LineBuilder;Z)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setPoints(Ljava/util/List;)V

    :cond_2
    return-void
.end method
