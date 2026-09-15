.class public Lorg/osmdroid/views/overlay/GroundOverlay2;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mBearing:F

.field private mImage:Landroid/graphics/Bitmap;

.field private mLatD:F

.field private mLatU:F

.field private mLonL:F

.field private mLonR:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field protected mTransparency:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mBearing:F

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->setTransparency(F)V

    return-void
.end method


# virtual methods
.method public computeMatrix(Lorg/osmdroid/views/Projection;)V
    .locals 8

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonL:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v0

    iget v2, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatU:F

    float-to-double v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v2

    iget v4, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonR:F

    float-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lorg/osmdroid/views/Projection;->getLongPixelXFromLongitude(D)J

    move-result-wide v4

    iget v6, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatD:F

    float-to-double v6, v6

    invoke-virtual {p1, v6, v7}, Lorg/osmdroid/views/Projection;->getLongPixelYFromLatitude(D)J

    move-result-wide v6

    sub-long/2addr v4, v0

    long-to-float p1, v4

    sub-long/2addr v6, v2

    long-to-float v4, v6

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p1, v5

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    long-to-float v0, v0

    long-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/GroundOverlay2;->computeMatrix(Lorg/osmdroid/views/Projection;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getImage()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/GroundOverlay2;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mBearing:F

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mTransparency:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mBearing:F

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatU:F

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonL:F

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLatD:F

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mLonR:F

    return-void
.end method

.method public setTransparency(F)V
    .locals 2

    iput p1, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mTransparency:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/GroundOverlay2;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    rsub-int p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
