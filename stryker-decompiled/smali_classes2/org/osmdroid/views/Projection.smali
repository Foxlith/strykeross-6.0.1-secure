.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/api/IProjection;


# static fields
.field public static final mProjectedMapSize:D = 1.15292150460684698E18


# instance fields
.field private horizontalWrapEnabled:Z

.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

.field private final mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapCenterOffsetX:I

.field private final mMapCenterOffsetY:I

.field private final mMercatorMapSize:D

.field private mOffsetX:J

.field private mOffsetY:J

.field private final mOrientation:F

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private mScrollX:J

.field private mScrollY:J

.field private final mTileSize:D

.field private final mTileSystem:Lorg/osmdroid/util/TileSystem;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:D

.field private verticalWrapEnabled:Z


# direct methods
.method public constructor <init>(DIILorg/osmdroid/util/GeoPoint;FZZII)V
    .locals 15

    .line 1
    new-instance v3, Landroid/graphics/Rect;

    const/4 v0, 0x0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v12

    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v4, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-void
.end method

.method public constructor <init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V
    .locals 13

    .line 2
    move-object v0, p0

    move/from16 v1, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    new-instance v4, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v4}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    move/from16 v4, p13

    iput v4, v0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetX:I

    move/from16 v4, p14

    iput v4, v0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetY:I

    move-wide v7, p1

    iput-wide v7, v0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move/from16 v4, p10

    iput-boolean v4, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    move/from16 v4, p11

    iput-boolean v4, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    move-object/from16 v4, p12

    iput-object v4, v0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v9

    iput-wide v9, v0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/osmdroid/views/Projection;->mTileSize:D

    move-object/from16 v7, p3

    iput-object v7, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    if-eqz p4, :cond_0

    move-object/from16 v7, p4

    :goto_0
    move-wide/from16 v5, p5

    goto :goto_1

    :cond_0
    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v7, v5, v6, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    goto :goto_0

    :goto_1
    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mScrollX:J

    move-wide/from16 v5, p7

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mScrollY:J

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v5

    int-to-long v5, v5

    iget-wide v11, v0, Lorg/osmdroid/views/Projection;->mScrollX:J

    sub-long/2addr v5, v11

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    iget-boolean v8, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    move-object/from16 p1, p12

    move-wide p2, v11

    move-wide/from16 p4, v9

    move/from16 p6, v8

    invoke-virtual/range {p1 .. p6}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide v11

    sub-long/2addr v5, v11

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v5

    int-to-long v5, v5

    iget-wide v11, v0, Lorg/osmdroid/views/Projection;->mScrollY:J

    sub-long/2addr v5, v11

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    iget-boolean v11, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    move-wide p2, v7

    move/from16 p6, v11

    invoke-virtual/range {p1 .. p6}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    iput v1, v0, Lorg/osmdroid/views/Projection;->mOrientation:F

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v1, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-direct {p0}, Lorg/osmdroid/views/Projection;->refresh()V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 16

    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v1

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getExpectedCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->isHorizontalMapRepetitionEnabled()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->isVerticalMapRepetitionEnabled()Z

    move-result v12

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapCenterOffsetX()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getMapCenterOffsetY()I

    move-result v15

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v8

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    move v14, v15

    invoke-direct/range {v0 .. v14}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-void
.end method

.method private applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;
    .locals 1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :goto_0
    if-eqz p5, :cond_1

    iget-object p5, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float p1, p1

    const/4 v0, 0x0

    aput p1, p5, v0

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, p5, p2

    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget p4, p1, v0

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Point;->x:I

    aget p1, p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    iput p1, p3, Landroid/graphics/Point;->x:I

    iput p2, p3, Landroid/graphics/Point;->y:I

    :goto_1
    return-object p3
.end method

.method private getCloserPixel(JIID)J
    .locals 8

    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    int-to-long v2, p3

    cmp-long p3, p1, v2

    const-wide/16 v4, 0x0

    if-gez p3, :cond_3

    :goto_0
    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    long-to-double v4, p1

    add-double/2addr v4, p5

    double-to-long v4, v4

    move-wide v6, p1

    move-wide p1, v4

    move-wide v4, v6

    goto :goto_0

    :cond_0
    int-to-long p3, p4

    cmp-long p3, p1, p3

    if-gez p3, :cond_1

    return-wide p1

    :cond_1
    sub-long p3, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p5

    cmp-long p3, p3, p5

    if-gez p3, :cond_2

    return-wide p1

    :cond_2
    return-wide v4

    :cond_3
    :goto_1
    cmp-long p3, p1, v2

    if-ltz p3, :cond_4

    long-to-double v4, p1

    sub-double/2addr v4, p5

    double-to-long v4, v4

    move-wide v6, p1

    move-wide p1, v4

    move-wide v4, v6

    goto :goto_1

    :cond_4
    int-to-long p3, p4

    cmp-long p3, v4, p3

    if-gez p3, :cond_5

    return-wide v4

    :cond_5
    sub-long p3, v0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p5

    cmp-long p3, p3, p5

    if-gez p3, :cond_6

    return-wide p1

    :cond_6
    return-wide v4
.end method

.method private getLongPixelFromMercator(JZJII)J
    .locals 7

    add-long v1, p1, p4

    if-eqz p3, :cond_0

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    move-object v0, p0

    move v3, p6

    move v4, p7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->getCloserPixel(JIID)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method private getLongPixelXFromMercator(JZ)J
    .locals 8

    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelFromMercator(JZJII)J

    move-result-wide p1

    return-wide p1
.end method

.method private getLongPixelYFromMercator(JZ)J
    .locals 8

    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/Projection;->getLongPixelFromMercator(JZJII)J

    move-result-wide p1

    return-wide p1
.end method

.method public static getScrollableOffset(JJDII)J
    .locals 5

    :goto_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-double p2, p2

    add-double/2addr p2, p4

    double-to-long p2, p2

    goto :goto_0

    :cond_0
    mul-int/lit8 p4, p7, 0x2

    sub-int p4, p6, p4

    int-to-long p4, p4

    cmp-long p4, v0, p4

    if-gez p4, :cond_3

    const-wide/16 p4, 0x2

    div-long/2addr v0, p4

    div-int/lit8 p6, p6, 0x2

    int-to-long p4, p6

    sub-long p6, p4, v0

    sub-long/2addr p6, p0

    cmp-long p0, p6, v2

    if-lez p0, :cond_1

    return-wide p6

    :cond_1
    add-long/2addr p4, v0

    sub-long/2addr p4, p2

    cmp-long p0, p4, v2

    if-gez p0, :cond_2

    return-wide p4

    :cond_2
    return-wide v2

    :cond_3
    int-to-long p4, p7

    sub-long/2addr p4, p0

    cmp-long p0, p4, v2

    if-gez p0, :cond_4

    return-wide p4

    :cond_4
    sub-int/2addr p6, p7

    int-to-long p0, p6

    sub-long/2addr p0, p2

    cmp-long p2, p0, v2

    if-lez p2, :cond_5

    return-wide p0

    :cond_5
    return-wide v2
.end method

.method private refresh()V
    .locals 12

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v1

    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getScreenCenterY()I

    move-result v2

    iget v3, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v1

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v4

    :cond_1
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v0, v4

    :cond_2
    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v4, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v2, v3

    :cond_3
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v2, v3

    :cond_4
    iget-object v3, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;->set(DDDD)V

    return-void
.end method


# virtual methods
.method public adjustOffsets(DDZI)V
    .locals 15

    .line 1
    move-object v0, p0

    move-wide/from16 v1, p3

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_0

    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v5

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v7

    iget-wide v9, v0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-object v1, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    move/from16 v12, p6

    invoke-static/range {v5 .. v12}, Lorg/osmdroid/views/Projection;->getScrollableOffset(JJDII)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v5

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v7

    iget-wide v9, v0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-object v1, v0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    move/from16 v12, p6

    invoke-static/range {v5 .. v12}, Lorg/osmdroid/views/Projection;->getScrollableOffset(JJDII)J

    move-result-wide v1

    move-wide v13, v1

    move-wide v1, v3

    move-wide v3, v13

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/osmdroid/views/Projection;->adjustOffsets(JJ)V

    return-void
.end method

.method public adjustOffsets(JJ)V
    .locals 3

    .line 2
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    iget-wide p1, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    invoke-direct {p0}, Lorg/osmdroid/views/Projection;->refresh()V

    return-void
.end method

.method public adjustOffsets(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/PointF;)V
    .locals 2

    .line 3
    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p0, p1, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/osmdroid/views/Projection;->adjustOffsets(JJ)V

    return-void
.end method

.method public adjustOffsets(Lorg/osmdroid/util/BoundingBox;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->adjustOffsets(DDZI)V

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getActualNorth()D

    move-result-wide v8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getActualSouth()D

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/osmdroid/views/Projection;->adjustOffsets(DDZI)V

    return-void
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;
    .locals 10

    .line 3
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v1

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-virtual {p0, v1, v2, p1}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v1

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide p1

    iget-boolean v3, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-virtual {p0, p1, p2, v3}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    const/4 p2, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, p2

    :goto_1
    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    if-nez p1, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move v9, v7

    goto :goto_3

    :cond_3
    :goto_2
    move v9, p2

    :goto_3
    move-object v7, p3

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getCleanMercator(JZ)J
    .locals 6

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getCleanMercator(JDZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCurrentCenter()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getLongPixelXFromLongitude(D)J
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelXFromLongitude(DZ)J
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v5, p3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p3, 0x1

    goto :goto_0

    :goto_2
    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide p1

    iget-boolean p3, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelYFromLatitude(D)J
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelYFromLatitude(DZ)J
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    iget-wide v3, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    iget-boolean v1, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v5, p3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p3, 0x1

    goto :goto_0

    :goto_2
    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide p1

    iget-boolean p3, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 2

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p5, Lorg/osmdroid/util/PointL;

    invoke-direct {p5}, Lorg/osmdroid/util/PointL;-><init>()V

    :goto_0
    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v0, v0

    div-double/2addr v0, p2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1, p4}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    iput-wide v0, p5, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v0, v0

    div-double/2addr v0, p2

    double-to-long p1, v0

    invoke-direct {p0, p1, p2, p4}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    iput-wide p1, p5, Lorg/osmdroid/util/PointL;->y:J

    return-object p5
.end method

.method public getMercatorFromTile(I)J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    invoke-static {p1, v0, v1}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;
    .locals 13

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/osmdroid/util/RectL;

    invoke-direct {p1}, Lorg/osmdroid/util/RectL;-><init>()V

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    iget v8, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    const/16 v8, 0x8

    new-array v9, v8, [F

    int-to-float v10, v1

    const/4 v11, 0x0

    aput v10, v9, v11

    int-to-float v10, v5

    const/4 v12, 0x1

    aput v10, v9, v12

    int-to-float v10, v3

    const/4 v12, 0x2

    aput v10, v9, v12

    const/4 v10, 0x3

    int-to-float v12, v0

    aput v12, v9, v10

    const/4 v10, 0x4

    int-to-float v1, v1

    aput v1, v9, v10

    const/4 v1, 0x5

    int-to-float v0, v0

    aput v0, v9, v1

    const/4 v0, 0x6

    int-to-float v1, v3

    aput v1, v9, v0

    const/4 v0, 0x7

    int-to-float v1, v5

    aput v1, v9, v0

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_1
    if-ge v11, v8, :cond_5

    aget v0, v9, v11

    cmpl-float v1, v2, v0

    if-lez v1, :cond_1

    move v2, v0

    :cond_1
    cmpg-float v1, v4, v0

    if-gez v1, :cond_2

    move v4, v0

    :cond_2
    add-int/lit8 v0, v11, 0x1

    aget v0, v9, v0

    cmpl-float v1, v6, v0

    if-lez v1, :cond_3

    move v6, v0

    :cond_3
    cmpg-float v1, v7, v0

    if-gez v1, :cond_4

    move v7, v0

    :cond_4
    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_5
    float-to-int v0, v2

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    float-to-int v0, v6

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    float-to-int v0, v4

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/osmdroid/util/RectL;->right:J

    float-to-int v0, v7

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/osmdroid/util/RectL;->bottom:J

    return-object p1
.end method

.method public getMercatorXFromPixel(I)J
    .locals 4

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMercatorYFromPixel(I)J
    .locals 4

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetX()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:J

    return-wide v0
.end method

.method public getOffsetY()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:J

    return-wide v0
.end method

.method public getOffspring(DLandroid/graphics/Rect;)Lorg/osmdroid/views/Projection;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lorg/osmdroid/views/Projection;

    iget-object v5, v0, Lorg/osmdroid/views/Projection;->mCurrentCenter:Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    iget v10, v0, Lorg/osmdroid/views/Projection;->mOrientation:F

    iget-boolean v11, v0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    iget-boolean v12, v0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    iget-object v13, v0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Lorg/osmdroid/views/Projection;-><init>(DLandroid/graphics/Rect;Lorg/osmdroid/util/GeoPoint;JJFZZLorg/osmdroid/util/TileSystem;II)V

    return-object v16
.end method

.method public getOrientation()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    return v0
.end method

.method public getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorFromTile(I)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, v2}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return-object p3
.end method

.method public getPixelsFromProjected(Lorg/osmdroid/util/PointL;DLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    :goto_0
    new-instance v6, Lorg/osmdroid/util/PointL;

    invoke-direct {v6}, Lorg/osmdroid/util/PointL;-><init>()V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    iget-wide p1, v6, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p4, Landroid/graphics/Point;->x:I

    iget-wide p1, v6, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p4, Landroid/graphics/Point;->y:I

    return-object p4
.end method

.method public getProjectedPowerDifference()D
    .locals 4

    const-wide/high16 v0, 0x43b0000000000000L    # 1.15292150460684698E18

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getWorldMapSize()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScreenCenterX()I
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetX:I

    add-int/2addr v1, v0

    return v1
.end method

.method public getScreenCenterY()I
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapCenterOffsetY:I

    add-int/2addr v1, v0

    return v1
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;Z)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getTileFromMercator(J)I
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mTileSize:D

    invoke-static {p1, p2, v0, v1}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getWorldMapSize()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mMercatorMapSize:D

    return-wide v0
.end method

.method public getZoomLevel()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    return-wide v0
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result p1

    return p1
.end method

.method public metersToPixels(F)F
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenterWithDateLine()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:D

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result p1

    return p1
.end method

.method public metersToPixels(FDD)F
    .locals 2

    .line 2
    float-to-double v0, p1

    invoke-static {p2, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method public restore(Landroid/graphics/Canvas;Z)V
    .locals 2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public save(Landroid/graphics/Canvas;ZZ)V
    .locals 2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method public setMapScroll(Lorg/osmdroid/views/MapView;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollX()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapScrollY()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/Projection;->mScrollX:J

    iget-wide v2, p0, Lorg/osmdroid/views/Projection;->mScrollY:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/views/MapView;->setMapScroll(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/osmdroid/util/PointL;

    invoke-direct {p3}, Lorg/osmdroid/util/PointL;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/Projection;->getMercatorXFromPixel(I)J

    move-result-wide v0

    iget-boolean p1, p0, Lorg/osmdroid/views/Projection;->horizontalWrapEnabled:Z

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide v0

    iput-wide v0, p3, Lorg/osmdroid/util/PointL;->x:J

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/Projection;->getMercatorYFromPixel(I)J

    move-result-wide p1

    iget-boolean v0, p0, Lorg/osmdroid/views/Projection;->verticalWrapEnabled:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getCleanMercator(JZ)J

    move-result-wide p1

    iput-wide p1, p3, Lorg/osmdroid/util/PointL;->y:J

    return-object p3
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 2

    .line 2
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    :goto_0
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(DZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(DZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public toPixelsFromMercator(JJLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5}, Landroid/graphics/Point;-><init>()V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->getLongPixelXFromMercator(JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p5, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p3, p4, v0}, Lorg/osmdroid/views/Projection;->getLongPixelYFromMercator(JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p5, Landroid/graphics/Point;->y:I

    return-object p5
.end method

.method public toPixelsFromProjected(Lorg/osmdroid/util/PointL;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getProjectedPowerDifference()D

    move-result-wide v2

    new-instance v6, Lorg/osmdroid/util/PointL;

    invoke-direct {v6}, Lorg/osmdroid/util/PointL;-><init>()V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->getLongPixelsFromProjected(Lorg/osmdroid/util/PointL;DZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    iget-wide v0, v6, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    iget-wide v0, v6, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 7

    .line 1
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(DDZLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mTileSystem:Lorg/osmdroid/util/TileSystem;

    const-wide/high16 v5, 0x43b0000000000000L    # 1.15292150460684698E18

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p6

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(JJLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    long-to-double p1, p1

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v3, p1, v0

    long-to-double p1, p3

    mul-double v5, p1, v0

    move-object v2, p0

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 6

    .line 4
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object p1

    return-object p1
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    iget-object v4, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOrientation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->applyMatrixToPoint(IILandroid/graphics/Point;Landroid/graphics/Matrix;Z)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
