.class public Lorg/osmdroid/views/drawing/MapSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/drawing/MapSnapshot$Status;,
        Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;
    }
.end annotation


# static fields
.field public static final INCLUDE_FLAGS_ALL:I = 0xf

.field public static final INCLUDE_FLAG_EXPIRED:I = 0x2

.field public static final INCLUDE_FLAG_NOTFOUND:I = 0x8

.field public static final INCLUDE_FLAG_SCALED:I = 0x4

.field public static final INCLUDE_FLAG_UPTODATE:I = 0x1


# instance fields
.field private mAlreadyFinished:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentlyRunning:Z

.field private mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

.field private final mIncludeFlags:I

.field private mIsDetached:Z

.field private mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

.field private mOneMoreTime:Z

.field private mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mProjection:Lorg/osmdroid/views/Projection;

.field private mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field private mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field private final mViewPort:Lorg/osmdroid/util/RectL;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/tileprovider/MapTileProviderBase;Ljava/util/List;Lorg/osmdroid/views/Projection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;",
            "I",
            "Lorg/osmdroid/tileprovider/MapTileProviderBase;",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;",
            "Lorg/osmdroid/views/Projection;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/RectL;

    invoke-direct {v0}, Lorg/osmdroid/util/RectL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mViewPort:Lorg/osmdroid/util/RectL;

    sget-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

    iput p2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    iput-object p3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iput-object p4, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOverlays:Ljava/util/List;

    iput-object p5, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {p5, v0}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    new-instance p1, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object p2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object p2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->isHorizontalWrapEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setHorizontalWrapEnabled(Z)V

    iget-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object p2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->isVerticalWrapEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setVerticalWrapEnabled(Z)V

    new-instance p1, Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-direct {p1, p0}, Lorg/osmdroid/views/drawing/MapSnapshotHandler;-><init>(Lorg/osmdroid/views/drawing/MapSnapshot;)V

    iput-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    iget-object p1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/views/MapView;)V
    .locals 6

    .line 2
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v3

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/drawing/MapSnapshot;-><init>(Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;ILorg/osmdroid/tileprovider/MapTileProviderBase;Ljava/util/List;Lorg/osmdroid/views/Projection;)V

    return-void
.end method

.method private draw()V
    .locals 8

    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v2, v7}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v4

    iget-object v6, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOverlays:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Overlay;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v2, v0, v3}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1, v0, v7}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public static isUIThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refresh()V
    .locals 7

    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshCheckStart()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getTileStates()Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v4

    iget-object v6, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    iget v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    if-eqz v1, :cond_6

    const/16 v2, 0xf

    if-eq v1, v2, :cond_6

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getUpToDate()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iget v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getExpired()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    iget v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getScaled()I

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    iget v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIncludeFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->getNotFound()I

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_a

    :cond_6
    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    sget-object v2, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    if-eq v1, v2, :cond_b

    sget-object v3, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    if-ne v1, v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshCheckFinish()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    iput-object v3, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iget-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->draw()V

    iput-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

    if-eqz v1, :cond_a

    invoke-interface {v1, p0}, Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;->callback(Lorg/osmdroid/views/drawing/MapSnapshot;)V

    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshCheckEnd()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_b
    :goto_3
    return-void
.end method

.method private declared-synchronized refreshAgain()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z

    iget-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshCheckEnd()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshCheckFinish()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshCheckStart()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mAlreadyFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_4
    iput-boolean v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOneMoreTime:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mCurrentlyRunning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static save(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    const/4 p0, 0x0

    return p0

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStatus()Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mIsDetached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    invoke-virtual {v1}, Lorg/osmdroid/views/drawing/MapSnapshotHandler;->destroy()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mHandler:Lorg/osmdroid/views/drawing/MapSnapshotHandler;

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mMapSnapshotable:Lorg/osmdroid/views/drawing/MapSnapshot$MapSnapshotable;

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mOverlays:Ljava/util/List;

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public refreshASAP()V
    .locals 1

    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refresh()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    sget-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    iput-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mStatus:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    invoke-virtual {p0}, Lorg/osmdroid/views/drawing/MapSnapshot;->refreshASAP()V

    return-void
.end method

.method public save(Ljava/io/File;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/drawing/MapSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lorg/osmdroid/views/drawing/MapSnapshot;->save(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
