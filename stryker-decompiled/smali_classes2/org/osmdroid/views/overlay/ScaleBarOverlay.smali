.class public Lorg/osmdroid/views/overlay/ScaleBarOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/constants/GeoConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    }
.end annotation


# static fields
.field private static final sTextBoundsRect:Landroid/graphics/Rect;


# instance fields
.field private adjustLength:Z

.field protected alignBottom:Z

.field protected alignRight:Z

.field private barPaint:Landroid/graphics/Paint;

.field protected final barPath:Landroid/graphics/Path;

.field private bgPaint:Landroid/graphics/Paint;

.field private centred:Z

.field private context:Landroid/content/Context;

.field private lastLatitude:D

.field private lastZoomLevel:D

.field latitudeBar:Z

.field protected final latitudeBarRect:Landroid/graphics/Rect;

.field longitudeBar:Z

.field protected final longitudeBarRect:Landroid/graphics/Rect;

.field private mMapHeight:I

.field private mMapView:Lorg/osmdroid/views/MapView;

.field private mMapWidth:I

.field private maxLength:F

.field minZoom:D

.field public screenHeight:I

.field public screenWidth:I

.field private textPaint:Landroid/graphics/Paint;

.field unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field xOffset:I

.field public xdpi:F

.field yOffset:I

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;II)V

    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;II)V
    .locals 6

    .line 3
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:D

    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    iput p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapWidth:I

    iput p4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 p4, 0x41200000    # 10.0f

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p4

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p3, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    iget p3, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    :try_start_0
    const-class p1, Landroid/os/Build;

    const-string p3, "MANUFACTURER"

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    :catch_0
    const-string p1, "motorola"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "DROIDX"

    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const-wide/high16 p2, 0x400e000000000000L    # 3.75

    const-wide v0, 0x4000cccccccccccdL    # 2.1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    if-lez p1, :cond_0

    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v2, p1

    div-double/2addr v2, p2

    double-to-float p1, v2

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double p1, p1

    div-double/2addr p1, v0

    double-to-float p1, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v2, p1

    div-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v0, p1

    div-double/2addr v0, p2

    double-to-float p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Droid"

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x43840000    # 264.0f

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    :goto_0
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    :cond_2
    const p1, 0x40228f5c    # 2.54f

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    return-void
.end method

.method private adjustScaleBarLength(D)D
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const-wide v3, 0x409cf00000000000L    # 1852.0

    const/4 v5, 0x1

    const-wide v6, 0x409925604189374cL    # 1609.344

    const-wide v8, 0x400a3f28fd4f4b98L    # 3.2808399

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-ne v1, v2, :cond_1

    const-wide v1, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_0

    div-double v1, p1, v6

    :goto_0
    move v5, v12

    goto :goto_1

    :cond_0
    mul-double v1, p1, v8

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v2, :cond_2

    const-wide v1, 0x4077266666666666L    # 370.4

    cmpl-double v1, p1, v1

    if-ltz v1, :cond_0

    div-double v1, p1, v3

    goto :goto_0

    :cond_2
    move-wide/from16 v1, p1

    goto :goto_0

    :goto_1
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v14, v1, v12

    const-wide/16 v15, 0x1

    if-ltz v14, :cond_3

    add-long/2addr v10, v15

    div-double/2addr v1, v12

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v1, v17

    if-gez v14, :cond_4

    const-wide/16 v19, 0x0

    cmpl-double v14, v1, v19

    if-lez v14, :cond_4

    sub-long/2addr v10, v15

    mul-double/2addr v1, v12

    goto :goto_2

    :cond_4
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpg-double v16, v1, v14

    if-gez v16, :cond_5

    goto :goto_3

    :cond_5
    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    cmpg-double v1, v1, v17

    if-gez v1, :cond_6

    move-wide/from16 v17, v14

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    div-double v17, v17, v8

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v2, :cond_8

    mul-double v17, v17, v6

    goto :goto_4

    :cond_8
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v2, :cond_9

    mul-double v17, v17, v3

    :cond_9
    :goto_4
    long-to-double v1, v10

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v17

    return-wide v1
.end method

.method private drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p2, v3, v2, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v1

    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    int-to-double v5, v0

    mul-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-int p2, v5

    invoke-virtual {p0, v3, v4}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v4

    double-to-int v1, v1

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    sub-int/2addr v4, p2

    int-to-float p2, v4

    add-float/2addr v2, p2

    :cond_1
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    :goto_1
    int-to-float p2, p2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v2, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v5, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v1

    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    int-to-double v5, v0

    mul-double/2addr v5, v3

    div-double/2addr v5, v1

    double-to-int p2, v5

    invoke-virtual {p0, v3, v4}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v4

    double-to-int v1, v1

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    :goto_1
    int-to-float v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :goto_2
    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    sub-int/2addr v3, p2

    int-to-float p2, v3

    add-float/2addr v2, p2

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p3}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->getConversionFactorToMeters()D

    move-result-wide v2

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getScaleString(Landroid/content/Context;Ljava/lang/String;Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMapHeight()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapHeight:I

    :goto_0
    return v0
.end method

.method private getMapWidth()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapWidth:I

    :goto_0
    return v0
.end method

.method public static getScaleString(Landroid/content/Context;Ljava/lang/String;Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;)Ljava/lang/String;
    .locals 1

    sget v0, Lorg/osmdroid/library/R$string;->format_distance_value_unit:I

    invoke-virtual {p2}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->getStringResId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public disableScaleBar()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Overlay;->setEnabled(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 13

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_2

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    :goto_1
    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    iput v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    const/4 v7, 0x0

    invoke-virtual {p2, v3, v2, v7}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget-wide v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    cmpl-double v3, v0, v7

    if-nez v3, :cond_3

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v7

    iget-wide v9, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    cmpl-double v3, v7, v9

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->rebuildBarPath(Lorg/osmdroid/views/Projection;)V

    :cond_4
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v2, :cond_5

    mul-int/lit8 v1, v1, -0x1

    :cond_5
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v2, :cond_6

    mul-int/lit8 v0, v0, -0x1

    :cond_6
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :cond_7
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :cond_8
    invoke-virtual {p2, p1, v6, v5}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    :cond_a
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    int-to-float v9, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v0

    iget-object v12, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :cond_c
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :cond_d
    invoke-virtual {p2, p1, v5}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public drawLatitudeScale(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public drawLongitudeScale(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public enableScaleBar()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Overlay;->setEnabled(Z)V

    return-void
.end method

.method public getBarPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public rebuildBarPath(Lorg/osmdroid/views/Projection;)V
    .locals 12

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-int v1, v4

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p1, v4, v3, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :goto_0
    int-to-double v8, v0

    mul-double/2addr v8, v6

    div-double/2addr v8, v2

    double-to-int v0, v8

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    invoke-virtual {p1, v3, v8, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, p1}, Lorg/osmdroid/util/GeoPoint;->distanceToAsDouble(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v2

    iget-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v2, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    int-to-double v8, v1

    mul-double/2addr v8, v4

    div-double/2addr v8, v2

    double-to-int p1, v8

    invoke-virtual {p0, v6, v7}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v8, v1

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v8, v10

    double-to-int v1, v8

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(D)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v7, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v5, v10

    double-to-int v3, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v5, :cond_2

    mul-int/lit8 v1, v1, -0x1

    mul-int/lit8 v2, v2, -0x1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getMapHeight()I

    move-result v5

    sub-int p1, v5, p1

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v6, :cond_3

    mul-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v4, -0x1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getMapWidth()I

    move-result v7

    sub-int v0, v7, v0

    :cond_3
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v9, v5

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int v1, v7, v4

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v1, v7

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int/2addr v4, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    return-void
.end method

.method public scaleBarLengthText(D)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const-string v2, "%.1f"

    const-string v3, "%.0f"

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const-wide v0, 0x40b3880000000000L    # 5000.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_2

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-string v1, "%.2f"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide v0, 0x40c2160000000000L    # 9260.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_4

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-wide v0, 0x4077266666666666L    # 370.4

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_5

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-wide v0, 0x40bf6eb851eb851fL    # 8046.72

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_7

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-wide v0, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_8

    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-direct {p0, p1, p2, v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getConvertedScaleString(DLorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAlignBottom(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public setAlignRight(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public setBarPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pBarPaint argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCentred(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public setEnableAdjustLength(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setMaxLength(F)V
    .locals 2

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method

.method public setMinZoom(D)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:D

    return-void
.end method

.method public setScaleBarOffset(II)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pTextPaint argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V
    .locals 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:D

    return-void
.end method
