.class public Lorg/osmdroid/views/overlay/Polygon;
.super Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polygon$OnClickListener;
    }
.end annotation


# instance fields
.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;-><init>(Lorg/osmdroid/views/MapView;ZZ)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "D)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x168

    if-ge v1, v2, :cond_0

    int-to-double v2, v1

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/GeoPoint;DD)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "DD)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v1

    const-wide v3, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    mul-double/2addr p3, v1

    const-wide v1, 0x4066800000000000L    # 180.0

    invoke-virtual {p0, p3, p4, v1, v2}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;

    move-result-object p2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    sub-double/2addr p3, v3

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    sub-double/2addr v3, v1

    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {p0, v1, v2, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-direct {p0, v1, v2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p0, v3, v4, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p1

    invoke-direct {p0, v3, v4, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onClickDefault(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    invoke-super {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getHoles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getActualPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public onClickDefault(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 0

    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->showInfoWindow()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHoles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/LinearRing;->isGeodesic()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/LinearRing;->setGeodesic(Z)V

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/LinearRing;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mHoles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
