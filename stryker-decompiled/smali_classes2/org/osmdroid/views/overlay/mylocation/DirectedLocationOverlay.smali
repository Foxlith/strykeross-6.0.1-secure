.class public Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field protected DIRECTION_ARROW:Landroid/graphics/Bitmap;

.field private DIRECTION_ARROW_CENTER_X:F

.field private DIRECTION_ARROW_CENTER_Y:F

.field private DIRECTION_ARROW_HEIGHT:I

.field private DIRECTION_ARROW_WIDTH:I

.field private final directionRotater:Landroid/graphics/Matrix;

.field private mAccuracy:I

.field protected mAccuracyPaint:Landroid/graphics/Paint;

.field protected mBearing:F

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected mPaint:Landroid/graphics/Paint;

.field private mShowAccuracy:Z

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/osmdroid/library/R$drawable;->twotone_navigation_black_48:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->setDirectionArrow(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 10

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    int-to-float v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v6

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mBearing:F

    iget v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    iget v7, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object v8, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setAccuracy(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    return-void
.end method

.method public setBearing(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mBearing:F

    return-void
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr p1, v1

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    return-void
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setShowAccuracy(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    return-void
.end method
