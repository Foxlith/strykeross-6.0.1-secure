.class public Lorg/osmdroid/views/overlay/TilesOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;
    }
.end annotation


# static fields
.field public static final INVERT_COLORS:Landroid/graphics/ColorFilter;

.field public static final MENU_MAP_MODE:I

.field public static final MENU_OFFLINE:I

.field public static final MENU_SNAPSHOT:I

.field public static final MENU_STATES:I

.field public static final MENU_TILE_SOURCE_STARTING_ID:I

.field static final negate:[F


# instance fields
.field private ctx:Landroid/content/Context;

.field private currentColorFilter:Landroid/graphics/ColorFilter;

.field private horizontalWrapEnabled:Z

.field private mCanvasRect:Landroid/graphics/Rect;

.field protected final mDebugPaint:Landroid/graphics/Paint;

.field private final mIntersectionRect:Landroid/graphics/Rect;

.field private mLoadingBackgroundColor:I

.field private mLoadingLineColor:I

.field private mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

.field private mOptionsMenuEnabled:Z

.field protected mProjection:Lorg/osmdroid/views/Projection;

.field private final mProtectedTiles:Landroid/graphics/Rect;

.field private final mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

.field protected final mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private final mTileRect:Landroid/graphics/Rect;

.field private final mTileStates:Lorg/osmdroid/tileprovider/TileStates;

.field protected final mViewPort:Lorg/osmdroid/util/RectL;

.field protected userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private verticalWrapEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuIdSequence(I)I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_SNAPSHOT:I

    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_STATES:I

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/osmdroid/views/overlay/TilesOverlay;->negate:[F

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v1, Lorg/osmdroid/views/overlay/TilesOverlay;->INVERT_COLORS:Landroid/graphics/ColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;

    new-instance v1, Lorg/osmdroid/util/RectL;

    invoke-direct {v1}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0xd8

    const/16 v3, 0xd0

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    const/16 v2, 0xc8

    const/16 v3, 0xc0

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->horizontalWrapEnabled:Z

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->verticalWrapEnabled:Z

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProtectedTiles:Landroid/graphics/Rect;

    new-instance v0, Lorg/osmdroid/tileprovider/TileStates;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/TileStates;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    new-instance v0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p0, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->setHorizontalWrapEnabled(Z)V

    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/TilesOverlay;->setVerticalWrapEnabled(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must pass a valid tile provider to the tiles overlay."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingTile()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private clearLoadingTile()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getLoadingTile()Landroid/graphics/drawable/Drawable;
    .locals 15

    const-string v0, "OsmDroid"

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_3

    iget v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-int/lit8 v11, v1, 0x10

    const/4 v3, 0x0

    move v12, v3

    :goto_1
    if-ge v12, v1, :cond_2

    const/4 v4, 0x0

    int-to-float v13, v12

    int-to-float v14, v1

    move-object v3, v9

    move v5, v13

    move v6, v14

    move v7, v13

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    move-object v3, v9

    move v4, v13

    move v6, v13

    move v7, v14

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v12, v11

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v1, "NullPointerException getting loading tile"

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_3

    :catch_1
    const-string v1, "OutOfMemoryError getting loading tile"

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 6

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    return-void
.end method

.method public drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V
    .locals 0

    iput-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-virtual {p2, p3, p4, p5, p1}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->loop(DLorg/osmdroid/util/RectL;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCanvasRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mCanvasRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLoadingBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    return v0
.end method

.method public getLoadingLineColor()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    return v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMaximumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v0

    return v0
.end method

.method public getProjection()Lorg/osmdroid/views/Projection;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    return-object v0
.end method

.method public getTileStates()Lorg/osmdroid/tileprovider/TileStates;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    return-object v0
.end method

.method public isHorizontalWrapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->horizontalWrapEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public isVerticalWrapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->verticalWrapEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 6

    sget v0, Lorg/osmdroid/library/R$string;->map_mode:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_mapmode:I

    invoke-interface {v0, v2}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    sget v4, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v4, p2

    sget v5, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    add-int/2addr v5, v2

    add-int/2addr v5, p2

    invoke-interface {v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v5, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_MAP_MODE:I

    add-int/2addr v2, p2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lorg/osmdroid/library/R$string;->set_mode_offline:I

    goto :goto_1

    :cond_1
    sget p3, Lorg/osmdroid/library/R$string;->set_mode_online:I

    :goto_1
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_offline:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    add-int/2addr v2, p2

    invoke-interface {p1, v1, v2, v1, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    sget p3, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_SNAPSHOT:I

    add-int/2addr p3, p2

    sget v0, Lorg/osmdroid/library/R$string;->snapshot:I

    invoke-interface {p1, v1, p3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    sget p3, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_STATES:I

    add-int/2addr p3, p2

    sget p2, Lorg/osmdroid/library/R$string;->states:I

    invoke-interface {p1, v1, p3, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    return v3
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2

    iget-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->ctx:Landroid/content/Context;

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingTile:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->asyncRecycle(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sub-int/2addr p1, p2

    sget p2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    const/4 v0, 0x1

    if-lt p1, p2, :cond_0

    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p2

    if-ge p1, v1, :cond_0

    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v1

    sub-int/2addr p1, p2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {p3, p1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return v0

    :cond_0
    sget p2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p3, p1}, Lorg/osmdroid/views/MapView;->setUseDataConnection(Z)V

    return v0

    :cond_1
    sget p2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_STATES:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileStates:Lorg/osmdroid/tileprovider/TileStates;

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/TileStates;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    :cond_2
    sget p2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_SNAPSHOT:I

    if-ne p1, p2, :cond_3

    new-instance p1, Lorg/osmdroid/views/drawing/MapSnapshot;

    new-instance p2, Lorg/osmdroid/views/overlay/TilesOverlay$1;

    invoke-direct {p2, p0}, Lorg/osmdroid/views/overlay/TilesOverlay$1;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    invoke-direct {p1, p2, v0, p3}, Lorg/osmdroid/views/drawing/MapSnapshot;-><init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/views/MapView;)V

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "TilesOverlaySnapShotThread"

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return v0

    :cond_3
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    sget v2, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_TILE_SOURCE_STARTING_ID:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    sget v0, Lorg/osmdroid/views/overlay/TilesOverlay;->MENU_OFFLINE:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->useDataConnection()Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lorg/osmdroid/library/R$string;->set_mode_offline:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/osmdroid/library/R$string;->set_mode_online:I

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v1
.end method

.method public onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public protectDisplayedTilesForCache(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->getTileSize(D)D

    move-result-wide v0

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProtectedTiles:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(Lorg/osmdroid/util/RectL;DLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result p1

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTileArea()Lorg/osmdroid/util/MapTileArea;

    move-result-object p2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProtectedTiles:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Lorg/osmdroid/util/MapTileArea;->set(ILandroid/graphics/Rect;)Lorg/osmdroid/util/MapTileArea;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileCache;->maintenance()V

    return-void
.end method

.method public setCanvasRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mCanvasRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->currentColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setHorizontalWrapEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->horizontalWrapEnabled:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-virtual {v0, p1}, Lorg/osmdroid/util/TileLooper;->setHorizontalWrapEnabled(Z)V

    return-void
.end method

.method public setLoadingBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingBackgroundColor:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->clearLoadingTile()V

    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->userSelectedLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadingLineColor(I)V
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mLoadingLineColor:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->clearLoadingTile()V

    :cond_0
    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mOptionsMenuEnabled:Z

    return-void
.end method

.method public setProjection(Lorg/osmdroid/views/Projection;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setUseDataConnection(Z)V

    return-void
.end method

.method public setVerticalWrapEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->verticalWrapEnabled:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileLooper:Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;

    invoke-virtual {v0, p1}, Lorg/osmdroid/util/TileLooper;->setVerticalWrapEnabled(Z)V

    return-void
.end method

.method public setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setProjection(Lorg/osmdroid/views/Projection;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    const/4 p1, 0x1

    return p1
.end method

.method public useDataConnection()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->useDataConnection()Z

    move-result v0

    return v0
.end method
