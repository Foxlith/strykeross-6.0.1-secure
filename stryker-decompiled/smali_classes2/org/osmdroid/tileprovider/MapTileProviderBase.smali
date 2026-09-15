.class public abstract Lorg/osmdroid/tileprovider/MapTileProviderBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/tileprovider/IMapTileProviderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;,
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;,
        Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
    }
.end annotation


# static fields
.field public static final MAPTILE_FAIL_ID:I = 0x1

.field public static final MAPTILE_SUCCESS_ID:I = 0x0

.field private static sApproximationBackgroundColor:I = -0x333334


# instance fields
.field protected final mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

.field protected mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

.field private final mTileRequestCompleteHandlers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field protected mUseDataConnection:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Landroid/os/Handler;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->createTileCache()Lorg/osmdroid/tileprovider/MapTileCache;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    return-void
.end method

.method public static synthetic access$300()I
    .locals 1

    sget v0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sApproximationBackgroundColor:I

    return v0
.end method

.method private sendMessage(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessageFailFast(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendMessageFailFast(I)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static setApproximationBackgroundColor(I)V
    .locals 0

    sput p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sApproximationBackgroundColor:I

    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileCache;->clear()V

    return-void
.end method

.method public createTileCache()Lorg/osmdroid/tileprovider/MapTileCache;
    .locals 1

    new-instance v0, Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/MapTileCache;-><init>()V

    return-object v0
.end method

.method public detach()V
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/osmdroid/tileprovider/BitmapPool;->getInstance()Lorg/osmdroid/tileprovider/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/BitmapPool;->returnDrawableToPool(Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->ensureCapacity(I)Z

    return-void
.end method

.method public expireInMemoryCache(J)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public abstract getMapTile(J)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMaximumZoomLevel()I
.end method

.method public abstract getMinimumZoomLevel()I
.end method

.method public abstract getQueueSize()J
.end method

.method public getTileCache()Lorg/osmdroid/tileprovider/MapTileCache;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    return-object v0
.end method

.method public getTileRequestCompleteHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    return-object v0
.end method

.method public getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    return-object v0
.end method

.method public abstract getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p2

    invoke-interface {p2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {p2}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-virtual {p0, v0, v1, p2, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p2

    invoke-interface {p2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    const/4 v3, -0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->sendMessage(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public mapTileRequestFailedExceedsMaxQueueSize(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    return-void
.end method

.method public putExpiredTileIntoCache(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    const/4 p1, -0x2

    invoke-virtual {p0, v0, v1, p2, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-le v0, p4, :cond_1

    return-void

    :cond_1
    invoke-static {p3, p4}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    iget-object p4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {p4, p1, p2, p3}, Lorg/osmdroid/tileprovider/MapTileCache;->putTile(JLandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public rescaleCache(Lorg/osmdroid/views/Projection;DDLandroid/graphics/Rect;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v5, p4

    move-object/from16 v4, p6

    invoke-static/range {p2 .. p3}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v7

    invoke-static/range {p4 .. p5}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v8

    if-ne v7, v8, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v7

    const-string v10, "OsmDroid"

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "rescale tile cache from "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    invoke-virtual {v1, v7, v11, v12}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v7

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v4, v12}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v1

    new-instance v4, Lorg/osmdroid/util/RectL;

    iget-wide v14, v7, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v12, v7, Lorg/osmdroid/util/PointL;->y:J

    move-wide/from16 v16, v12

    iget-wide v11, v1, Lorg/osmdroid/util/PointL;->x:J

    move-wide/from16 v22, v8

    iget-wide v7, v1, Lorg/osmdroid/util/PointL;->y:J

    move-object v13, v4

    move-wide/from16 v18, v11

    move-wide/from16 v20, v7

    invoke-direct/range {v13 .. v21}, Lorg/osmdroid/util/RectL;-><init>(JJJJ)V

    cmpl-double v1, v2, v5

    if-lez v1, :cond_2

    new-instance v1, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;

    const/4 v7, 0x0

    invoke-direct {v1, v0, v7}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    new-instance v1, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;

    invoke-direct {v1, v0, v7}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v7

    invoke-interface {v7}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v7

    move-wide/from16 v2, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->loop(DLorg/osmdroid/util/RectL;DI)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished rescale in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v1, v1, v22

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setTileLoadFailureImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileNotFoundImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTileRequestCompleteHandler(Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileRequestCompleteHandlers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileSource:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    return-void
.end method

.method public useDataConnection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mUseDataConnection:Z

    return v0
.end method
