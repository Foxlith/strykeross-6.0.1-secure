.class public Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# static fields
.field public static final MENU_MY_LOCATION:I


# instance fields
.field protected enableAutoStop:Z

.field protected mCirclePaint:Landroid/graphics/Paint;

.field protected mDirectionArrowBitmap:Landroid/graphics/Bitmap;

.field protected mDirectionArrowCenterX:F

.field protected mDirectionArrowCenterY:F

.field protected mDrawAccuracyEnabled:Z

.field private final mDrawPixel:Landroid/graphics/Point;

.field private final mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerToken:Ljava/lang/Object;

.field protected mIsFollowing:Z

.field private mIsLocationEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mMapController:Lorg/osmdroid/api/IMapController;

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field public mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

.field private mOptionsMenuEnabled:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPersonBitmap:Landroid/graphics/Bitmap;

.field protected final mPersonHotspot:Landroid/graphics/PointF;

.field private final mRunOnFirstFix:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapPixel:Landroid/graphics/Point;

.field private wasEnabledOnPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v3, 0x64

    const/16 v4, 0xff

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->person:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setPersonIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/osmdroid/library/R$drawable;->round_navigation_white_48:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionIcon(Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    const/high16 p2, 0x3f500000    # 0.8125f

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setPersonAnchor(FF)V

    invoke-virtual {p0, v0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionAnchor(FF)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public disableFollowLocation()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->stopAnimation(Z)V

    :cond_0
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    return-void
.end method

.method public disableMyLocation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;Landroid/location/Location;)V
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v1

    double-to-float p2, v1

    div-float/2addr v0, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p3}, Landroid/location/Location;->hasBearing()Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result p2

    const/high16 p3, 0x43b40000    # 360.0f

    cmpl-float v0, p2, p3

    if-ltz v0, :cond_1

    sub-float/2addr p2, p3

    :cond_1
    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    sub-float/2addr v0, v1

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    :goto_0
    sub-float/2addr p3, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p2

    neg-float p2, p2

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :goto_1
    return-void
.end method

.method public enableFollowLocation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public enableMyLocation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return p1
.end method

.method public getEnableAutoStop()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method public getMyLocationProvider()Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    return-object v0
.end method

.method public isDrawAccuracyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    return v0
.end method

.method public isFollowLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2

    sget v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lorg/osmdroid/library/R$string;->my_location:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/osmdroid/library/R$drawable;->ic_menu_mylocation:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return p2
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->destroy()V

    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;-><init>(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;Landroid/location/Location;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sub-int/2addr p1, p2

    sget p2, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 0

    sget p3, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr p3, p2

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onResume()V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    return-void
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 3

    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p4

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    invoke-virtual {p4, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object p4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget v1, p4, Landroid/graphics/Point;->x:I

    iput v1, p3, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    iput v1, p3, Landroid/graphics/Point;->y:I

    iget p3, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p3

    int-to-double v1, p1

    iget p1, p4, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    mul-double/2addr v1, v1

    mul-double/2addr p1, p1

    add-double/2addr p1, v1

    const-wide/high16 p3, 0x4050000000000000L    # 64.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isFollowLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result p1

    return p1
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "#runOnFirstFix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setDirectionAnchor(FF)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    return-void
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setPersonIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionIcon(Landroid/graphics/Bitmap;)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionAnchor(FF)V

    return-void
.end method

.method public setDirectionIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDrawAccuracyEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    return-void
.end method

.method public setEnableAutoStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 5

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    iget-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1, v0}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must pass an IMyLocationProvider to setMyLocationProvider()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    return-void
.end method

.method public setPersonAnchor(FF)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setPersonHotspot(FF)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public stopLocationProvider()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->stopLocationProvider()V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
