.class public Lorg/osmdroid/views/MapViewRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

.field private mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

.field private mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

.field private mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

.field private final mInfoWindowList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/osmdroid/views/overlay/infowindow/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mMapView:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    iput-object p1, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDefaultMarkerIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDefaultMarkerInfoWindow()Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-nez v0, :cond_0

    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    iget-object v2, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    return-object v0
.end method

.method public getDefaultPolygonInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    if-nez v0, :cond_0

    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    iget-object v2, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    return-object v0
.end method

.method public getDefaultPolylineInfoWindow()Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    if-nez v0, :cond_0

    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    iget-object v2, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/MapViewRepository;->mInfoWindowList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mMapView:Lorg/osmdroid/views/MapView;

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolylineInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultPolygonInfoWindow:Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;

    iput-object v0, p0, Lorg/osmdroid/views/MapViewRepository;->mDefaultMarkerIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
