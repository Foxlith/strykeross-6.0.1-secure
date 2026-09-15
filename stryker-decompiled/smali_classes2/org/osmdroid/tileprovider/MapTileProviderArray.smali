.class public Lorg/osmdroid/tileprovider/MapTileProviderArray;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;


# static fields
.field private static final WORKING_STATUS_FOUND:I = 0x1

.field private static final WORKING_STATUS_STARTED:I


# instance fields
.field private mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

.field protected final mTileProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorking:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private remove(J)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->remove(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public contains(J)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public detach()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    :cond_1
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->useDataConnection()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v5

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v6

    if-gt v5, v6, :cond_3

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v6

    if-ge v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :cond_3
    :goto_1
    move v7, v3

    move v3, v2

    move v2, v7

    :cond_4
    if-eqz v4, :cond_5

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    :cond_5
    return-object v4
.end method

.method public getMapTile(J)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->isDowngradedMode(J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lorg/osmdroid/tileprovider/MapTileRequestState;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-direct {v1, p1, p2, v2, p0}, Lorg/osmdroid/tileprovider/MapTileRequestState;-><init>(JLjava/util/List;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V

    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getMaximumZoomLevel()I
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v4

    if-le v4, v2, :cond_0

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinimumZoomLevel()I
    .locals 5

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v4

    if-ge v4, v0, :cond_0

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getQueueSize()J
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDowngradedMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public isDowngradedMode(J)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->remove(J)V

    return-void
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->runAsyncNextProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    return-void
.end method

.method public mapTileRequestFailedExceedsMaxQueueSize(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->remove(J)V

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v2, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
