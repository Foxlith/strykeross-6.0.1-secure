.class public Lorg/osmdroid/views/overlay/GroundOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field private mBearing:F

.field private mBottomLeft:Lorg/osmdroid/util/GeoPoint;

.field private mBottomRight:Lorg/osmdroid/util/GeoPoint;

.field private mImage:Landroid/graphics/Bitmap;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixDst:[F

.field private mMatrixSrc:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mTopLeft:Lorg/osmdroid/util/GeoPoint;

.field private mTopRight:Lorg/osmdroid/util/GeoPoint;

.field private mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBearing:F

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/GroundOverlay;->setTransparency(F)V

    return-void
.end method

.method private computeMatrix(Lorg/osmdroid/views/Projection;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    iget-object v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    iget-object v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    sub-long/2addr v6, v2

    long-to-float v1, v6

    sub-long/2addr v8, v4

    long-to-float v6, v8

    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    long-to-float v2, v2

    long-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-nez v2, :cond_1

    new-array v2, v11, [F

    iput-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v12, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    iget-object v13, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    const/4 v14, 0x0

    aput v14, v13, v10

    aput v14, v13, v9

    int-to-float v2, v2

    aput v2, v13, v8

    aput v14, v13, v7

    aput v2, v13, v6

    int-to-float v2, v12

    aput v2, v13, v5

    aput v14, v13, v4

    aput v2, v13, v3

    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    if-nez v2, :cond_2

    new-array v2, v11, [F

    iput-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    :cond_2
    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v11

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v13

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    iget-object v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    iget-object v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    iget-object v10, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    move-wide v15, v8

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v8

    iget-object v10, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v17, v8

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    long-to-float v10, v11

    const/4 v11, 0x0

    aput v10, v1, v11

    long-to-float v10, v13

    const/4 v11, 0x1

    aput v10, v1, v11

    long-to-float v2, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    long-to-float v2, v4

    const/4 v3, 0x3

    aput v2, v1, v3

    long-to-float v2, v6

    const/4 v3, 0x4

    aput v2, v1, v3

    move-wide v2, v15

    long-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v1, v3

    move-wide/from16 v2, v17

    long-to-float v2, v2

    const/4 v3, 0x6

    aput v2, v1, v3

    long-to-float v2, v8

    const/4 v3, 0x7

    aput v2, v1, v3

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v1

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/GroundOverlay;->computeMatrix(Lorg/osmdroid/views/Projection;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBearing:F

    return v0
.end method

.method public getBottomLeft()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getBottomRight()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTopLeft()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getTopRight()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTransparency:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBearing:F

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mImage:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixSrc:[F

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrixDst:[F

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p3}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    new-instance p4, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    move-object v1, p4

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object p4, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method public setTransparency(F)V
    .locals 2

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mTransparency:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    rsub-int p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
