.class Lorg/osmdroid/views/MapController$MapAnimatorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapAnimatorListener"
.end annotation


# instance fields
.field private final mCenter:Lorg/osmdroid/util/GeoPoint;

.field private final mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

.field private final mCenterStart:Lorg/osmdroid/api/IGeoPoint;

.field private final mMapController:Lorg/osmdroid/views/MapController;

.field private final mOrientationSpan:Ljava/lang/Float;

.field private final mOrientationStart:Ljava/lang/Float;

.field private final mZoomEnd:Ljava/lang/Double;

.field private final mZoomStart:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController;Ljava/lang/Double;Ljava/lang/Double;Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenter:Lorg/osmdroid/util/GeoPoint;

    iput-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iput-object p2, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomStart:Ljava/lang/Double;

    iput-object p3, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomEnd:Ljava/lang/Double;

    iput-object p4, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterStart:Lorg/osmdroid/api/IGeoPoint;

    iput-object p5, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    if-nez p7, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationStart:Ljava/lang/Float;

    :goto_0
    iput-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    goto :goto_1

    :cond_0
    iput-object p6, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationStart:Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double p3, p3

    invoke-static {p1, p2, p3, p4, p8}, Lorg/osmdroid/util/MyMath;->getAngleDifference(DDLjava/lang/Boolean;)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapController;->onAnimationStart()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomEnd:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomStart:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomEnd:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mZoomStart:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v0, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationStart:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mOrientationSpan:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v0, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v0, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterStart:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v3

    sub-double/2addr v3, v1

    float-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLongitude(D)D

    move-result-wide v1

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterStart:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v3

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenterEnd:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v7

    sub-double/2addr v7, v3

    mul-double/2addr v7, v5

    add-double/2addr v7, v3

    invoke-virtual {v0, v7, v8}, Lorg/osmdroid/util/TileSystem;->cleanLatitude(D)D

    move-result-wide v3

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v3, v4, v1, v2}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object p1, p1, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v0, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mCenter:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setExpectedCenter(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_2
    iget-object p1, p0, Lorg/osmdroid/views/MapController$MapAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object p1, p1, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
