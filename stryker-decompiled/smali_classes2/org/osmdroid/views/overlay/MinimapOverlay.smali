.class public Lorg/osmdroid/views/overlay/MinimapOverlay;
.super Lorg/osmdroid/views/overlay/TilesOverlay;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mZoomDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    const/16 p3, 0x64

    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    const/16 p3, 0xa

    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setZoomDifference(I)V

    iget-object p3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingBackgroundColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setLoadingLineColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    iget p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2, p1, v0, v6}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    invoke-virtual {p2, p1, v6}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return v0
.end method

.method public getZoomDifference()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z
    .locals 6

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v5

    add-int/2addr v5, p1

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->setCanvasRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/osmdroid/views/Projection;->getOffspring(DLandroid/graphics/Rect;)Lorg/osmdroid/views/Projection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setProjection(Lorg/osmdroid/views/Projection;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    const/4 p1, 0x1

    return p1
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return-void
.end method

.method public setZoomDifference(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return-void
.end method
