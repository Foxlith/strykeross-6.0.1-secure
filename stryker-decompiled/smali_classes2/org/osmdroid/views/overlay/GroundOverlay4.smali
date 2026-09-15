.class public Lorg/osmdroid/views/overlay/GroundOverlay4;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mBearing:F

.field private mBottomLeft:Lorg/osmdroid/util/GeoPoint;

.field private mBottomRight:Lorg/osmdroid/util/GeoPoint;

.field private mImage:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixDst:[F

.field private final mMatrixSrc:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mTopLeft:Lorg/osmdroid/util/GeoPoint;

.field private mTopRight:Lorg/osmdroid/util/GeoPoint;

.field protected mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixSrc:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixDst:[F

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBearing:F

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->setTransparency(F)V

    return-void
.end method


# virtual methods
.method public computeMatrix(Lorg/osmdroid/views/Projection;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v2

    iget-object v4, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v4

    iget-object v6, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v6

    iget-object v8, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v8

    iget-object v10, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v10

    iget-object v12, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v12

    iget-object v14, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v14

    move-wide/from16 v16, v14

    iget-object v14, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v14

    iget-object v1, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixDst:[F

    const/16 v18, 0x0

    long-to-float v2, v2

    aput v2, v1, v18

    const/4 v2, 0x1

    long-to-float v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    long-to-float v3, v6

    aput v3, v1, v2

    const/4 v2, 0x3

    long-to-float v3, v8

    aput v3, v1, v2

    const/4 v2, 0x4

    long-to-float v3, v10

    aput v3, v1, v2

    const/4 v2, 0x5

    long-to-float v3, v12

    aput v3, v1, v2

    const/4 v2, 0x6

    move-wide/from16 v3, v16

    long-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    long-to-float v3, v14

    aput v3, v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixSrc:[F

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixDst:[F

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/GroundOverlay4;->computeMatrix(Lorg/osmdroid/views/Projection;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBearing:F

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTransparency:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBearing:F

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 4

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay4;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mMatrixSrc:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    int-to-float p1, p1

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    int-to-float p1, v0

    const/4 v0, 0x5

    aput p1, v1, v0

    const/4 v0, 0x6

    aput v3, v1, v0

    const/4 v0, 0x7

    aput p1, v1, v0

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopLeft:Lorg/osmdroid/util/GeoPoint;

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTopRight:Lorg/osmdroid/util/GeoPoint;

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, p3}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomRight:Lorg/osmdroid/util/GeoPoint;

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mBottomLeft:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setTransparency(F)V
    .locals 2

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mTransparency:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay4;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    rsub-int p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
