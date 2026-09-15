.class public Lorg/osmdroid/views/overlay/ScaleDiskOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"


# instance fields
.field private mCirclePaint1:Landroid/graphics/Paint;

.field private mCirclePaint2:Landroid/graphics/Paint;

.field private mDisplaySizeMax:I

.field private mDisplaySizeMin:I

.field private final mGeoCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mLabel:Ljava/lang/String;

.field private mLabelOffsetBottom:Ljava/lang/Integer;

.field private mLabelOffsetLeft:Ljava/lang/Integer;

.field private mLabelOffsetRight:Ljava/lang/Integer;

.field private mLabelOffsetTop:Ljava/lang/Integer;

.field private final mLabelRect:Landroid/graphics/Rect;

.field private final mMeters:D

.field private final mPixelCenter:Landroid/graphics/Point;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/util/GeoPoint;ILorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)V
    .locals 4

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mGeoCenter:Lorg/osmdroid/util/GeoPoint;

    int-to-double v0, p3

    invoke-virtual {p4}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->getConversionFactorToMeters()D

    move-result-wide v2

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mMeters:D

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "%d"

    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getScaleString(Landroid/content/Context;Ljava/lang/String;Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    return-void
.end method

.method private getOffsetX()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getOffsetX(I)I
    .locals 1

    .line 2
    if-ltz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method private getOffsetY()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method private getOffsetY(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    if-ltz p1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    neg-int v0, v0

    goto :goto_1

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :goto_1
    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 10

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mGeoCenter:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mPixelCenter:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mMeters:D

    double-to-float v5, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mGeoCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v8

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/Projection;->metersToPixels(FDD)F

    move-result p2

    float-to-int p2, p2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMin:I

    if-lez v2, :cond_0

    mul-int/lit8 v3, p2, 0x2

    if-ge v3, v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMax:I

    if-lez v2, :cond_1

    mul-int/lit8 v3, p2, 0x2

    if-le v3, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint1:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    int-to-float v3, v1

    int-to-float v4, v0

    int-to-float v5, p2

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint2:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    int-to-float v3, v1

    int-to-float v4, v0

    int-to-float v5, p2

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetTop:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX()I

    move-result v2

    neg-int v3, p2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetTop:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int/2addr v2, v1

    int-to-float v2, v2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetLeft:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    neg-int v3, p2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX(I)I

    move-result v2

    add-int/2addr v3, v2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY()I

    move-result v2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int/2addr v3, v1

    int-to-float v3, v3

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetBottom:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX()I

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetBottom:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY(I)I

    move-result v3

    add-int/2addr v3, p2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int/2addr v2, v1

    int-to-float v2, v2

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetRight:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetX(I)I

    move-result v2

    add-int/2addr p2, v2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->getOffsetY()I

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabel:Ljava/lang/String;

    add-int/2addr v1, p2

    int-to-float p2, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public setCirclePaint1(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint1:Landroid/graphics/Paint;

    return-void
.end method

.method public setCirclePaint2(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mCirclePaint2:Landroid/graphics/Paint;

    return-void
.end method

.method public setDisplaySizeMax(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMax:I

    return-void
.end method

.method public setDisplaySizeMin(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mDisplaySizeMin:I

    return-void
.end method

.method public setLabelOffsetBottom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setLabelOffsetLeft(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetLeft:Ljava/lang/Integer;

    return-void
.end method

.method public setLabelOffsetRight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetRight:Ljava/lang/Integer;

    return-void
.end method

.method public setLabelOffsetTop(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mLabelOffsetTop:Ljava/lang/Integer;

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleDiskOverlay;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method
